import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_page_pod.g.dart';

@riverpod
class LoginPageDetails extends _$LoginPageDetails {
  @override
  bool build() {
    return false;
  }

  void loginSuccess() {
    state = true;
  }

  void loginFailure() {
    state = false;
  }
}

@riverpod
String username(UsernameRef ref){
  return '';
}
