// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$helloWorldHash() => r'ce99180fd90ad9e0cd0b6ef6909e74bc40ac8dd1';

/// See also [helloWorld].
@ProviderFor(helloWorld)
final helloWorldProvider = AutoDisposeProvider<String>.internal(
  helloWorld,
  name: r'helloWorldProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$helloWorldHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef HelloWorldRef = AutoDisposeProviderRef<String>;
String _$canRemoveNameHash() => r'e4771cdc7f449348019ab215fbb7f7e7cc89a06a';

/// See also [canRemoveName].
@ProviderFor(canRemoveName)
final canRemoveNameProvider = AutoDisposeProvider<bool>.internal(
  canRemoveName,
  name: r'canRemoveNameProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$canRemoveNameHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CanRemoveNameRef = AutoDisposeProviderRef<bool>;
String _$userNameHash() => r'694d21a6261a1b1a67526bffdc768d1d490905b6';

/// See also [UserName].
@ProviderFor(UserName)
final userNameProvider = NotifierProvider<UserName, List<String>>.internal(
  UserName.new,
  name: r'userNameProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userNameHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UserName = Notifier<List<String>>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
