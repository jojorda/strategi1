import 'package:strategi_hub_app/core/base/base_provider.dart';
import 'package:strategi_hub_app/core/constants/endpoints.dart';
import 'package:strategi_hub_app/data/models/response/rss_response.dart';

class NewsRemoteSource extends ApiProvider {
  Future<RssResponse> getNews() async {
    final response = await get(Endpoints.getNews);

    if (response.status.hasError) {
      throw Exception(response.statusText!);
    }

    return RssResponse.fromJson(response.body['data']);
  }
}
