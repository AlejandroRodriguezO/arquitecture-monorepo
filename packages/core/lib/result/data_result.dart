import 'package:equatable/equatable.dart';

sealed class DataResult<T> extends Equatable {
  const DataResult();

  bool get isSuccess => this is Success<T>;
  bool get isFailure => this is Failure<T>;

  R fold<R>({
    required R Function(Failure<T> f) onFailure,
    required R Function(T data) onSuccess,
  }) {
    final DataResult<T> self = this;
    if (self is Success<T>) {
      return onSuccess(self.data);
    }
    return onFailure(self as Failure<T>);
  }

  @override
  List<Object?> get props => <Object?>[];
}

final class Success<T> extends DataResult<T> {
  const Success(this.data);
  final T data;
  @override
  List<Object?> get props => <Object?>[data];
}

final class Failure<T> extends DataResult<T> {
  const Failure(this.message, {this.exception, this.code});
  final String message;
  final Exception? exception;
  final int? code;

  @override
  List<Object?> get props => <Object?>[message, exception, code];
}
