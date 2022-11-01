import 'package:json_serializable_converter/json_serializable_converter.dart';

class JsonFactory
    implements
        JsonFactoryFromJson,
        JsonFactoryFromJson1,
        JsonFactoryFromJson2,
        JsonFactoryFromJson3 {
  @override
  T? fromJson<T>(Map<String, dynamic> json) {
    // TODO: implement fromJson
    throw UnimplementedError();
  }

  @override
  T? fromJson1<T, S>(
    Map<String, dynamic> json,
    S Function(Object? json) fromJson,
  ) {
    // TODO: implement fromJson1
    throw UnimplementedError();
  }

  @override
  T? fromJson2<T, S, S2>(
    Map<String, dynamic> json,
    S Function(Object? json) fromJson,
    S2 Function(Object? json) fromJson2,
  ) {
    // TODO: implement fromJson2
    throw UnimplementedError();
  }

  @override
  T? fromJson3<T, S, S2, S3>(
    Map<String, dynamic> json,
    S Function(Object? json) fromJson,
    S2 Function(Object? json) fromJson2,
    S3 Function(Object? json) fromJson3,
  ) {
    // TODO: implement fromJson3
    throw UnimplementedError();
  }
}

testFromJson1() {
  List<int>? obj = JsonFactory().fromJson1({}, (json) => 1);
}
