typedef JsonFactoryFunction<T> = T Function(Map<String, dynamic> json);

typedef JsonFactoryFunction1<T, S> = T Function(
  Map<String, dynamic> json,
  S Function(Object? json) fromJson,
);

typedef JsonFactoryFunction2<T, S, S2> = T Function(
  Map<String, dynamic> json,
  S Function(Object? json) fromJson,
  S2 Function(Object? json) fromJson2,
);

typedef JsonFactoryFunction3<T, S, S2, S3> = T Function(
  Map<String, dynamic> json,
  S Function(Object? json) fromJson,
  S2 Function(Object? json) fromJson2,
  S3 Function(Object? json) fromJson3,
);

typedef JsonFactoryFunction4<T, S, S2, S3, S4> = T Function(
  Map<String, dynamic> json,
  S Function(Object? json) fromJson,
  S2 Function(Object? json) fromJson2,
  S3 Function(Object? json) fromJson3,
  S4 Function(Object? json) fromJson4,
);

typedef JsonFactoryFunction5<T, S, S2, S3, S4, S5> = T Function(
  Map<String, dynamic> json,
  S Function(Object? json) fromJson,
  S2 Function(Object? json) fromJson2,
  S3 Function(Object? json) fromJson3,
  S4 Function(Object? json) fromJson4,
  S5 Function(Object? json) fromJson5,
);

typedef JsonFactoryFunction6<T, S, S2, S3, S4, S5, S6> = T Function(
  Map<String, dynamic> json,
  S Function(Object? json) fromJson,
  S2 Function(Object? json) fromJson2,
  S3 Function(Object? json) fromJson3,
  S4 Function(Object? json) fromJson4,
  S5 Function(Object? json) fromJson5,
  S6 Function(Object? json) fromJson6,
);

typedef JsonFactoryFunction7<T, S, S2, S3, S4, S5, S6, S7> = T Function(
  Map<String, dynamic> json,
  S Function(Object? json) fromJson,
  S2 Function(Object? json) fromJson2,
  S3 Function(Object? json) fromJson3,
  S4 Function(Object? json) fromJson4,
  S5 Function(Object? json) fromJson5,
  S6 Function(Object? json) fromJson6,
  S7 Function(Object? json) fromJson7,
);

typedef JsonFactoryFunction8<T, S, S2, S3, S4, S5, S6, S7, S8> = T Function(
  Map<String, dynamic> json,
  S Function(Object? json) fromJson,
  S2 Function(Object? json) fromJson2,
  S3 Function(Object? json) fromJson3,
  S4 Function(Object? json) fromJson4,
  S5 Function(Object? json) fromJson5,
  S6 Function(Object? json) fromJson6,
  S7 Function(Object? json) fromJson7,
  S8 Function(Object? json) fromJson8,
);

typedef JsonFactoryFunction9<T, S, S2, S3, S4, S5, S6, S7, S8, S9> = T Function(
  Map<String, dynamic> json,
  S Function(Object? json) fromJson,
  S2 Function(Object? json) fromJson2,
  S3 Function(Object? json) fromJson3,
  S4 Function(Object? json) fromJson4,
  S5 Function(Object? json) fromJson5,
  S6 Function(Object? json) fromJson6,
  S7 Function(Object? json) fromJson7,
  S8 Function(Object? json) fromJson8,
  S9 Function(Object? json) fromJson9,
);

abstract class JsonFactoryFromJson {
  T? fromJson<T>(
    Map<String, dynamic> json,
  );
}

abstract class JsonFactoryFromJson1 {
  T? fromJson1<T, S>(
    Map<String, dynamic> json,
    S Function(Object? json) fromJson,
  );
}

abstract class JsonFactoryFromJson2 {
  T? fromJson2<T, S, S2>(
    Map<String, dynamic> json,
    S Function(Object? json) fromJson,
    S2 Function(Object? json) fromJson2,
  );
}

abstract class JsonFactoryFromJson3 {
  T? fromJson3<T, S, S2, S3>(
    Map<String, dynamic> json,
    S Function(Object? json) fromJson,
    S2 Function(Object? json) fromJson2,
    S3 Function(Object? json) fromJson3,
  );
}

abstract class JsonFactoryFromJson4 {
  T? fromJson4<T, S, S2, S3, S4>(
    Map<String, dynamic> json,
    S Function(Object? json) fromJson,
    S2 Function(Object? json) fromJson2,
    S3 Function(Object? json) fromJson3,
    S4 Function(Object? json) fromJson4,
  );
}

abstract class JsonFactoryFromJson5 {
  T? fromJson5<T, S, S2, S3, S4, S5>(
    Map<String, dynamic> json,
    S Function(Object? json) fromJson,
    S2 Function(Object? json) fromJson2,
    S3 Function(Object? json) fromJson3,
    S4 Function(Object? json) fromJson4,
    S5 Function(Object? json) fromJson5,
  );
}

abstract class JsonFactoryFromJson6 {
  T? fromJson6<T, S, S2, S3, S4, S5, S6>(
    Map<String, dynamic> json,
    S Function(Object? json) fromJson,
    S2 Function(Object? json) fromJson2,
    S3 Function(Object? json) fromJson3,
    S4 Function(Object? json) fromJson4,
    S5 Function(Object? json) fromJson5,
    S6 Function(Object? json) fromJson6,
  );
}

abstract class JsonFactoryFromJson7 {
  T? fromJson7<T, S, S2, S3, S4, S5, S6, S7>(
    Map<String, dynamic> json,
    S Function(Object? json) fromJson,
    S2 Function(Object? json) fromJson2,
    S3 Function(Object? json) fromJson3,
    S4 Function(Object? json) fromJson4,
    S5 Function(Object? json) fromJson5,
    S6 Function(Object? json) fromJson6,
    S7 Function(Object? json) fromJson7,
  );
}

abstract class JsonFactoryFromJson8 {
  T? fromJson8<T, S, S2, S3, S4, S5, S6, S7, S8>(
    Map<String, dynamic> json,
    S Function(Object? json) fromJson,
    S2 Function(Object? json) fromJson2,
    S3 Function(Object? json) fromJson3,
    S4 Function(Object? json) fromJson4,
    S5 Function(Object? json) fromJson5,
    S6 Function(Object? json) fromJson6,
    S7 Function(Object? json) fromJson7,
    S8 Function(Object? json) fromJson8,
  );
}

abstract class JsonFactoryFromJson9 {
  T? fromJson9<T, S, S2, S3, S4, S5, S6, S7, S8, S9>(
    Map<String, dynamic> json,
    S Function(Object? json) fromJson,
    S2 Function(Object? json) fromJson2,
    S3 Function(Object? json) fromJson3,
    S4 Function(Object? json) fromJson4,
    S5 Function(Object? json) fromJson5,
    S6 Function(Object? json) fromJson6,
    S7 Function(Object? json) fromJson7,
    S8 Function(Object? json) fromJson8,
    S9 Function(Object? json) fromJson9,
  );
}
