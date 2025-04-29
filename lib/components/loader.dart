import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BouncingLoader extends StatefulWidget {
  const BouncingLoader({super.key});

  @override
  State<BouncingLoader> createState() => _BouncingLoaderState();
}

class _BouncingLoaderState extends State<BouncingLoader>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0, end: -15)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Transform.translate(
            offset: Offset(0, _animation.value),
            child: child,
          );
        },
        child:
            Image.asset('assets/images/fav-android.png', width: 75, height: 75),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

void showLoader() {
  if (!(Get.isDialogOpen ?? false)) {
    Get.dialog(
      const BouncingLoader(),
      barrierDismissible: false,
      barrierColor: Colors.white.withAlpha(70),
    );
  }
}

void hideLoader() {
  if (Get.isDialogOpen ?? false) {
    Get.back();
  }
}
