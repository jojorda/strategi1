import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:intl/intl.dart';
import 'package:strategi_hub_app/data/models/response/rss_response.dart';
import 'package:strategi_hub_app/domain/entities/news.dart';

import 'news.auto_mappr.dart';

@AutoMappr([
  MapType<NewsItem, News>(
    fields: [
      Field('image', custom: NewsMapper.mapImages),
      Field('pubDate', custom: NewsMapper.mapFormatDate),
      Field('date', custom: NewsMapper.mapDate)
    ],
  ),
])
class NewsMapper extends $NewsMapper {
  static String mapImages(NewsItem dto) => '${dto.enclosure?.url}';
  static String mapFormatDate(NewsItem dto) {
    DateTime? parsedDate = DateTime.tryParse(dto.pubDate ?? '');
    if (parsedDate == null) {
      return '';
    }

    return DateFormat('dd MMM yyyy HH:mm ').format(parsedDate);
  }

  static DateTime mapDate(NewsItem dto) {
    DateTime? parsedDate = DateTime.tryParse(dto.pubDate ?? '');

    return parsedDate ?? DateTime.now();
  }
}
