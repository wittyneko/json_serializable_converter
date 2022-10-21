library json_serializable_converter;

import 'package:json_annotation/json_annotation.dart';

export 'package:json_annotation/json_annotation.dart';

class JsonSerializableConverter {
  static final allJsonConverters = <JsonConverter<dynamic, dynamic>>[];

  static final allJsonSerializable = JsonSerializable(
    converters: allJsonConverters,
  );

  static T? nullableGenericFromJson<T>(
    Object? input,
    T Function(Object? json) fromJson,
  ) {
    return input == null ? null : fromJson(input);
  }

  static Object? nullableGenericToJson<T>(
    T? input,
    Object? Function(T value) toJson,
  ) {
    return input == null ? null : toJson(input);
  }
}
