import 'package:test/test.dart';
import 'package:strategi_mobile_api/strategi_mobile_api.dart';


/// tests for Class30SecondsApi
void main() {
  final instance = StrategiMobileApi().getClass30SecondsApi();

  group(Class30SecondsApi, () {
    // Get the list of 30 seconds video
    //
    // Retrieves a list of 30 seconds video data with details like location, stream URL, and more. You can filter the results based on specific fields.
    //
    //Future<Model30SecondsGet200Response> call30secondsGet() async
    test('test call30secondsGet', () async {
      // TODO
    });

  });
}
