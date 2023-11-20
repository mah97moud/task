typedef JSON = Map<String, dynamic>;
typedef OnTap = void Function()?;
typedef OnChange = void Function(String text)?;
typedef OnSave = void Function(String? text)?;
typedef ValidatorText = String? Function(String?)?;
typedef FailureOrData<T> = ({
  List<T>? data,
  String message,
});

sealed class Result<S> {}

final class Success<S> extends Result<S> {
  Success(this.value);

  final S value;
}

final class Failure<s> extends Result<s> {
  Failure(this.message);

  final String message;
}

extension ResultExtension<S> on Result<S> {
 dynamic Function(dynamic) fold(
    Function(S value) onSuccess,
    Function(String message) onFailure,
  ) {
    return switch (this) {
      Success<S>(value: final data) => onSuccess(data),
      Failure(message: final errMsg) => onFailure(errMsg),
    };
  }

  S get value => switch (this) {
        Success<S>(value: final data) => data,
        Failure<S>(message: final errMsg) => throw Exception(errMsg),
      };

  /// return function for success case
}
