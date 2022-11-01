import 'generic_type.dart';
import 'package:json_annotation/json_annotation.dart';

class JsonConverterBinding<T, S> {
  final GenericType<T> resultType;
  final GenericType<S> sourceType;
  final JsonConverter<T, S> converter;

  JsonConverterBinding._(this.resultType, this.sourceType, this.converter);

  static JsonConverterBinding<T, S> create<T, S>(
    JsonConverter<T, S> converter,
  ) {
    return JsonConverterBinding._(
      GenericType<T>(),
      GenericType<S>(),
      converter,
    );
  }

  @override
  int get hashCode => Object.hash(resultType, sourceType);
}
