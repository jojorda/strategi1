import 'package:strategi_hub_app/data/local/local_storage_keys.dart';
import 'package:strategi_hub_app/data/local/local_storage_service.dart';
import 'package:strategi_hub_app/data/models/response/rss_response.dart';
import 'package:strategi_hub_app/data/remote/news_remote_source.dart';
import 'package:strategi_hub_app/domain/entities/news.dart';
import 'package:strategi_hub_app/domain/mappers/news.dart';
import 'package:strategi_mobile_api/strategi_mobile_api.dart';

class NewsRepository {
  final NewsRemoteSource _newsRemoteSource;
  final StrategiMobileApi _strategiMobileApi;
  final LocalStorageService _localStorageService;

  NewsRepository(this._newsRemoteSource, this._strategiMobileApi,
      this._localStorageService);

  Stream<List<News>> getNews() async* {
    try {
      // Emit locally stored data first
      final data = _localStorageService.getList<News>(
          LocalStorageKeys.news, News.fromJson);
      if (data != null) {
        yield data;
      }

      // Perform network call to get up-to-date data
      final response = await _newsRemoteSource.getNews();
      final filteredItems =
          response.items?.where((e) => e.enclosure != null).toList() ?? [];
      final newsList = NewsMapper().convertList<NewsItem, News>(filteredItems);

      newsList.sort((a, b) => b.date?.compareTo(a.date ?? DateTime.now()) ?? 0);

      // Update local storage with new data
      await _localStorageService.setList(LocalStorageKeys.news, newsList, (e) {
        return e.toJson();
      });
      final datas = _localStorageService.getList<News>(
          LocalStorageKeys.news, News.fromJson);

      // Emit the new data
      yield datas ?? [];
    } catch (e) {
      yield [];
    }
  }

  Future<NewsRssGet200Response?> getRss() async {
    try {
      final newsApi = _strategiMobileApi.getNewsApi();
      final response = await newsApi.newsRssGet();
      return response.data;
    } catch (e) {
      throw Exception('Failed to get rss: $e');
    }
  }
}
