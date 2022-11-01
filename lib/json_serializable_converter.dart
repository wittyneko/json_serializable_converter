library json_serializable_converter;

import 'package:json_annotation/json_annotation.dart';

import 'json_serializable_converter.dart';

export 'package:json_annotation/json_annotation.dart';

export 'src/generic_type.dart';
export 'src/json_converter_binding.dart';
export 'src/json_factory_function.dart';

class JsonSerializableConverter {
  JsonSerializableConverter._();

  static final allBindings = <JsonConverterBinding<dynamic, dynamic>>{};

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

  static bool isNullable<T>() => null is T;

  static T fromJsonObject<T, S>(S json) {
    final resultNullable = isNullable<T>();
    final resultList = allBindings.where((element) {
      return resultNullable
          ? element.resultType.nullableType == T
          : element.resultType.type == T;
    }).toList();

    JsonConverterBinding? binding;
    if (resultList.length == 1) {
      binding = resultList.first;
    } else if (resultList.length > 1) {
      final sourceNullable = isNullable<S>();
      final sourceList = resultList.where((element) {
        return sourceNullable
            ? element.sourceType.nullableType == T
            : element.sourceType.type == T;
      }).toList();
      if (sourceList.length != 0) {
        binding = sourceList.first;
      } else {
        final aaa = resultList.where((element) {
          return sourceNullable
              ? element.sourceType.nullableType == dynamic
              : element.sourceType.type == Object;
        }).toList();
      }
    }

    return binding?.converter.fromJson(json);

    // TODO: implement fromJson
    throw UnimplementedError();
  }

  S toJsonObject<T, S>(T object) {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
