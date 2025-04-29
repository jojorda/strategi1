import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:strategi_mobile_api/strategi_mobile_api.dart';
import 'package:built_collection/built_collection.dart';

import 'shared.auto_mappr.dart';

@AutoMappr([], converters: [
  TypeConverter<Date?, DateTime?>(SharedMapper.dateToDateTime),
  TypeConverter<String?, DateTime?>(SharedMapper.stringToDateTime),
  TypeConverter<BuiltList<String>?, List<String>?>(
      SharedMapper.builtListStringToListString),
  TypeConverter<DateTime?, Date?>(SharedMapper.dateTimeToDate),
])
class SharedMapper extends $SharedMapper {
  const SharedMapper();

  static String? dateToString(Date? source) {
    return source?.toString() ?? '';
  }

  static DateTime? dateToDateTime(Date? source) {
    return source?.toDateTime();
  }

  static DateTime? stringToDateTime(String? source) {
    return DateTime.tryParse(source ?? '');
  }

  static List<String>? builtListStringToListString(BuiltList<String>? source) {
    return source?.toList() ?? [];
  }

  static Date? dateTimeToDate(DateTime? source) {
    return source == null
        ? null
        : Date(
            source.year,
            source.month,
            source.day,
          );
  }
}
