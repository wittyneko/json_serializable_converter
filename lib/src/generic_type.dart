abstract class GenericType<T> {
  abstract final Type type;
  abstract final Type nullableType;

  factory GenericType() => _GenericType<T>();
}

abstract class GenericType1<T, S> implements GenericType<T> {
  abstract final Type type;
  abstract final Type nullableType;
  abstract final GenericType<S> type1;

  factory GenericType1() => _GenericType1<T, S>();
}

void test() {
  testGenericType1<List<int>, int>();
}

void testGenericType1<T, S>() {
  T == GenericType<S>;
  GenericType1<T, S>();
}

class _GenericType1<T, S> extends _GenericType<T>
    implements GenericType1<T, S> {
  final GenericType<S> type1;

  _GenericType1()
      : this.type1 = GenericType<S>(),
        super();

  @override
  int get hashCode => Object.hash(type, nullableType, type1);
}

class _GenericType<T> implements GenericType<T> {
  final Type type;
  final GenericType<T?> _nullable;

  Type get nullableType => _nullable.type;

  _GenericType()
      : this.type = T,
        this._nullable = _NullableType<T?>._();

  @override
  int get hashCode => Object.hash(type, nullableType);
}

class _NullableType<T> implements GenericType<T> {
  final Type type;

  Type get nullableType => throw UnsupportedError("Unsupported");

  _NullableType._() : this.type = T;

  @override
  int get hashCode => Object.hash(type, null);
}
