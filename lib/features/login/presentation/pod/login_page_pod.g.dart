// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_page_pod.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$usernameHash() => r'cae0b0b7fd11c4030d57c933f81755c603eb1073';

/// See also [username].
@ProviderFor(username)
final usernameProvider = AutoDisposeProvider<String>.internal(
  username,
  name: r'usernameProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$usernameHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UsernameRef = AutoDisposeProviderRef<String>;
String _$loginPageDetailsHash() => r'b19397e28534544ce8b645435f46161659a8283d';

/// See also [LoginPageDetails].
@ProviderFor(LoginPageDetails)
final loginPageDetailsProvider =
    AutoDisposeNotifierProvider<LoginPageDetails, bool>.internal(
  LoginPageDetails.new,
  name: r'loginPageDetailsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$loginPageDetailsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$LoginPageDetails = AutoDisposeNotifier<bool>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
