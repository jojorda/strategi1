import 'package:test/test.dart';
import 'package:strategi_mobile_api/strategi_mobile_api.dart';


/// tests for HealthApi
void main() {
  final instance = StrategiMobileApi().getHealthApi();

  group(HealthApi, () {
    // check server is up
    //
    //Future<HealthGet200Response> healthGet() async
    test('test healthGet', () async {
      // TODO
    });

  });
}
