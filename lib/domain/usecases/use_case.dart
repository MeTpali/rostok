abstract class UseCase<P, R> {
  const UseCase();

  R call(P params);
}

abstract class UseCaseAsync<P, R> {
  const UseCaseAsync();

  Future<R> call(P params);
}
