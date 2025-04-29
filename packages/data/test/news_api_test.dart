import 'package:test/test.dart';
import 'package:strategi_mobile_api/strategi_mobile_api.dart';


/// tests for NewsApi
void main() {
  final instance = StrategiMobileApi().getNewsApi();

  group(NewsApi, () {
    // Fetch RSS Feed Data
    //
    // Retrieves and parses RSS feed data from the specified URL.
    //
    //Future<NewsRssGet200Response> newsRssGet() async
    test('test newsRssGet', () async {
      // TODO
    });

  });
}
