sealed class Result<T> {
  factory Result.success(T result) => Success(result);

  factory Result.error(Exception e) => Error(e);
}

class Success<T> implements Result<T> {
  final T result;

  Success(this.result);
}

class Error<T> implements Result<T> {
  final Exception e;

  Error(this.e);
}
