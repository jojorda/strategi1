import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:provider/provider.dart';
import 'package:requests_inspector/requests_inspector.dart';
import 'package:strategi_hub_app/bindings/initial_bindings.dart';
import 'package:strategi_hub_app/core/base/network_status_notifier.dart';
import 'package:strategi_hub_app/data/local/local_storage_service.dart';
import 'package:strategi_hub_app/domain/repositories/focus_repository.dart';
import 'package:strategi_hub_app/domain/repositories/posko_repository.dart';
import 'package:strategi_hub_app/modules/index/views/index_page.dart';
import 'package:strategi_hub_app/routes/routes.dart';
import 'package:strategi_hub_app/themes/app_theme.dart';
import 'package:flutter_downloader/flutter_downloader.dart';

final navigatorKey = GlobalKey<NavigatorState>();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  await initializeDateFormatting('id_ID', null);

  await dotenv.load(fileName: ".env");
  await Get.putAsync<LocalStorageService>(() => LocalStorageService().init());

  await FlutterDownloader.initialize(debug: kDebugMode, ignoreSsl: true);

  runApp(
    RequestsInspector(
      enabled: dotenv.env['ENABLE_INTERCEPTOR'] == 'true',
      showInspectorOn: ShowInspectorOn.LongPress,
      navigatorKey: navigatorKey,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => NetworkStatusNotifier(
            Get.find<LocalStorageService>(),
            Get.find<PoskoRepository>(),
            Get.find<FocusRepository>(),
          ),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(375.0, 812.0),
        builder: (context, child) {
          return GetMaterialApp(
            navigatorKey: navigatorKey,
            debugShowCheckedModeBanner: false,
            initialBinding: InitialBindings(),
            initialRoute: IndexPage.routeName,
            getPages: AppRoutes.pages,
            theme: AppTheme.lightTheme(),
            darkTheme: AppTheme.lightTheme(),
            themeMode: ThemeMode.light,
            defaultTransition: Transition.fadeIn,
          );
        },
      ),
    );
  }
}
