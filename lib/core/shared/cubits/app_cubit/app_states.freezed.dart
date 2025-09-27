// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noInternet,
    required TResult Function() noCredentials,
    required TResult Function() onboarding,
    required TResult Function() loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noInternet,
    TResult? Function()? noCredentials,
    TResult? Function()? onboarding,
    TResult? Function()? loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noInternet,
    TResult Function()? noCredentials,
    TResult Function()? onboarding,
    TResult Function()? loggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(NoCredentials value) noCredentials,
    required TResult Function(Onboarding value) onboarding,
    required TResult Function(LoggedIn value) loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(NoCredentials value)? noCredentials,
    TResult? Function(Onboarding value)? onboarding,
    TResult? Function(LoggedIn value)? loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(NoCredentials value)? noCredentials,
    TResult Function(Onboarding value)? onboarding,
    TResult Function(LoggedIn value)? loggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStatesCopyWith<$Res> {
  factory $AppStatesCopyWith(AppStates value, $Res Function(AppStates) then) =
      _$AppStatesCopyWithImpl<$Res, AppStates>;
}

/// @nodoc
class _$AppStatesCopyWithImpl<$Res, $Val extends AppStates>
    implements $AppStatesCopyWith<$Res> {
  _$AppStatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AppStatesCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AppStates.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noInternet,
    required TResult Function() noCredentials,
    required TResult Function() onboarding,
    required TResult Function() loggedIn,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noInternet,
    TResult? Function()? noCredentials,
    TResult? Function()? onboarding,
    TResult? Function()? loggedIn,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noInternet,
    TResult Function()? noCredentials,
    TResult Function()? onboarding,
    TResult Function()? loggedIn,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(NoCredentials value) noCredentials,
    required TResult Function(Onboarding value) onboarding,
    required TResult Function(LoggedIn value) loggedIn,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(NoCredentials value)? noCredentials,
    TResult? Function(Onboarding value)? onboarding,
    TResult? Function(LoggedIn value)? loggedIn,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(NoCredentials value)? noCredentials,
    TResult Function(Onboarding value)? onboarding,
    TResult Function(LoggedIn value)? loggedIn,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AppStates {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AppStatesCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AppStates.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noInternet,
    required TResult Function() noCredentials,
    required TResult Function() onboarding,
    required TResult Function() loggedIn,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noInternet,
    TResult? Function()? noCredentials,
    TResult? Function()? onboarding,
    TResult? Function()? loggedIn,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noInternet,
    TResult Function()? noCredentials,
    TResult Function()? onboarding,
    TResult Function()? loggedIn,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(NoCredentials value) noCredentials,
    required TResult Function(Onboarding value) onboarding,
    required TResult Function(LoggedIn value) loggedIn,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(NoCredentials value)? noCredentials,
    TResult? Function(Onboarding value)? onboarding,
    TResult? Function(LoggedIn value)? loggedIn,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(NoCredentials value)? noCredentials,
    TResult Function(Onboarding value)? onboarding,
    TResult Function(LoggedIn value)? loggedIn,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements AppStates {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$NoInternetImplCopyWith<$Res> {
  factory _$$NoInternetImplCopyWith(
          _$NoInternetImpl value, $Res Function(_$NoInternetImpl) then) =
      __$$NoInternetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoInternetImplCopyWithImpl<$Res>
    extends _$AppStatesCopyWithImpl<$Res, _$NoInternetImpl>
    implements _$$NoInternetImplCopyWith<$Res> {
  __$$NoInternetImplCopyWithImpl(
      _$NoInternetImpl _value, $Res Function(_$NoInternetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoInternetImpl implements NoInternet {
  const _$NoInternetImpl();

  @override
  String toString() {
    return 'AppStates.noInternet()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoInternetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noInternet,
    required TResult Function() noCredentials,
    required TResult Function() onboarding,
    required TResult Function() loggedIn,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noInternet,
    TResult? Function()? noCredentials,
    TResult? Function()? onboarding,
    TResult? Function()? loggedIn,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noInternet,
    TResult Function()? noCredentials,
    TResult Function()? onboarding,
    TResult Function()? loggedIn,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(NoCredentials value) noCredentials,
    required TResult Function(Onboarding value) onboarding,
    required TResult Function(LoggedIn value) loggedIn,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(NoCredentials value)? noCredentials,
    TResult? Function(Onboarding value)? onboarding,
    TResult? Function(LoggedIn value)? loggedIn,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(NoCredentials value)? noCredentials,
    TResult Function(Onboarding value)? onboarding,
    TResult Function(LoggedIn value)? loggedIn,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class NoInternet implements AppStates {
  const factory NoInternet() = _$NoInternetImpl;
}

/// @nodoc
abstract class _$$NoCredentialsImplCopyWith<$Res> {
  factory _$$NoCredentialsImplCopyWith(
          _$NoCredentialsImpl value, $Res Function(_$NoCredentialsImpl) then) =
      __$$NoCredentialsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoCredentialsImplCopyWithImpl<$Res>
    extends _$AppStatesCopyWithImpl<$Res, _$NoCredentialsImpl>
    implements _$$NoCredentialsImplCopyWith<$Res> {
  __$$NoCredentialsImplCopyWithImpl(
      _$NoCredentialsImpl _value, $Res Function(_$NoCredentialsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoCredentialsImpl implements NoCredentials {
  const _$NoCredentialsImpl();

  @override
  String toString() {
    return 'AppStates.noCredentials()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoCredentialsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noInternet,
    required TResult Function() noCredentials,
    required TResult Function() onboarding,
    required TResult Function() loggedIn,
  }) {
    return noCredentials();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noInternet,
    TResult? Function()? noCredentials,
    TResult? Function()? onboarding,
    TResult? Function()? loggedIn,
  }) {
    return noCredentials?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noInternet,
    TResult Function()? noCredentials,
    TResult Function()? onboarding,
    TResult Function()? loggedIn,
    required TResult orElse(),
  }) {
    if (noCredentials != null) {
      return noCredentials();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(NoCredentials value) noCredentials,
    required TResult Function(Onboarding value) onboarding,
    required TResult Function(LoggedIn value) loggedIn,
  }) {
    return noCredentials(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(NoCredentials value)? noCredentials,
    TResult? Function(Onboarding value)? onboarding,
    TResult? Function(LoggedIn value)? loggedIn,
  }) {
    return noCredentials?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(NoCredentials value)? noCredentials,
    TResult Function(Onboarding value)? onboarding,
    TResult Function(LoggedIn value)? loggedIn,
    required TResult orElse(),
  }) {
    if (noCredentials != null) {
      return noCredentials(this);
    }
    return orElse();
  }
}

abstract class NoCredentials implements AppStates {
  const factory NoCredentials() = _$NoCredentialsImpl;
}

/// @nodoc
abstract class _$$OnboardingImplCopyWith<$Res> {
  factory _$$OnboardingImplCopyWith(
          _$OnboardingImpl value, $Res Function(_$OnboardingImpl) then) =
      __$$OnboardingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnboardingImplCopyWithImpl<$Res>
    extends _$AppStatesCopyWithImpl<$Res, _$OnboardingImpl>
    implements _$$OnboardingImplCopyWith<$Res> {
  __$$OnboardingImplCopyWithImpl(
      _$OnboardingImpl _value, $Res Function(_$OnboardingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnboardingImpl implements Onboarding {
  const _$OnboardingImpl();

  @override
  String toString() {
    return 'AppStates.onboarding()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnboardingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noInternet,
    required TResult Function() noCredentials,
    required TResult Function() onboarding,
    required TResult Function() loggedIn,
  }) {
    return onboarding();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noInternet,
    TResult? Function()? noCredentials,
    TResult? Function()? onboarding,
    TResult? Function()? loggedIn,
  }) {
    return onboarding?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noInternet,
    TResult Function()? noCredentials,
    TResult Function()? onboarding,
    TResult Function()? loggedIn,
    required TResult orElse(),
  }) {
    if (onboarding != null) {
      return onboarding();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(NoCredentials value) noCredentials,
    required TResult Function(Onboarding value) onboarding,
    required TResult Function(LoggedIn value) loggedIn,
  }) {
    return onboarding(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(NoCredentials value)? noCredentials,
    TResult? Function(Onboarding value)? onboarding,
    TResult? Function(LoggedIn value)? loggedIn,
  }) {
    return onboarding?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(NoCredentials value)? noCredentials,
    TResult Function(Onboarding value)? onboarding,
    TResult Function(LoggedIn value)? loggedIn,
    required TResult orElse(),
  }) {
    if (onboarding != null) {
      return onboarding(this);
    }
    return orElse();
  }
}

abstract class Onboarding implements AppStates {
  const factory Onboarding() = _$OnboardingImpl;
}

/// @nodoc
abstract class _$$LoggedInImplCopyWith<$Res> {
  factory _$$LoggedInImplCopyWith(
          _$LoggedInImpl value, $Res Function(_$LoggedInImpl) then) =
      __$$LoggedInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoggedInImplCopyWithImpl<$Res>
    extends _$AppStatesCopyWithImpl<$Res, _$LoggedInImpl>
    implements _$$LoggedInImplCopyWith<$Res> {
  __$$LoggedInImplCopyWithImpl(
      _$LoggedInImpl _value, $Res Function(_$LoggedInImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoggedInImpl implements LoggedIn {
  const _$LoggedInImpl();

  @override
  String toString() {
    return 'AppStates.loggedIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoggedInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noInternet,
    required TResult Function() noCredentials,
    required TResult Function() onboarding,
    required TResult Function() loggedIn,
  }) {
    return loggedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noInternet,
    TResult? Function()? noCredentials,
    TResult? Function()? onboarding,
    TResult? Function()? loggedIn,
  }) {
    return loggedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noInternet,
    TResult Function()? noCredentials,
    TResult Function()? onboarding,
    TResult Function()? loggedIn,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(NoCredentials value) noCredentials,
    required TResult Function(Onboarding value) onboarding,
    required TResult Function(LoggedIn value) loggedIn,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(NoCredentials value)? noCredentials,
    TResult? Function(Onboarding value)? onboarding,
    TResult? Function(LoggedIn value)? loggedIn,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(NoCredentials value)? noCredentials,
    TResult Function(Onboarding value)? onboarding,
    TResult Function(LoggedIn value)? loggedIn,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class LoggedIn implements AppStates {
  const factory LoggedIn() = _$LoggedInImpl;
}
