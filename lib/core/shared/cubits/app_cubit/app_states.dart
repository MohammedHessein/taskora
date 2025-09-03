import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_states.freezed.dart';

@freezed
class AppStates with _$AppStates {
  const factory AppStates.initial() = _Initial;
  const factory AppStates.loading() = Loading;
  const factory AppStates.noInternet() = NoInternet;
  const factory AppStates.noCredentials() = NoCredentials;
  const factory AppStates.onboarding() = Onboarding;
  const factory AppStates.loggedIn() = LoggedIn;
}
