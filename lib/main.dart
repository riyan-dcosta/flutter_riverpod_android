import 'package:flutter/material.dart';
import 'package:flutter_riverpod_android/second_page/second_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'main.g.dart';

//Functional
@riverpod
String helloWorld(HelloWorldRef ref) {
  return "hello world";
}

@Riverpod(keepAlive: true)
class UserName extends _$UserName {
  @override
  List<String> build() {
    return [];
  }

  void addName(String newName) {
    state = [...state, newName];
  }

  void removeName() {
    state.removeLast();
  }
}

@riverpod
bool canRemoveName(CanRemoveNameRef ref) {
  return ref
      .read(userNameProvider)
      .isNotEmpty;
}

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class HomeBody extends ConsumerWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userNameObj = ref.read(userNameProvider.notifier);
    final canRemoveName = ref.watch(canRemoveNameProvider);

    void removeLastName() {
      ref.read(userNameProvider.notifier).removeName();
    }

    print('build homeBody');
    return Container(
      decoration: BoxDecoration(color: Colors.red),
      child: Column(
        children: [
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {
                    userNameObj.addName("new name");
                  },
                  child: Text("add new name")),
              ElevatedButton(
                  onPressed: canRemoveName ? removeLastName : null,
                  child: Text('remove last')),
              ElevatedButton(onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (builder) => SecondPage()));
              }, child: Text("Second page"))
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ...ref.watch(userNameProvider).map((e) => Text(e)),
            ],
          ),
        ],
      ),
    );
  }
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('built myAPP');
    return MaterialApp(
      theme: ThemeData.from(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.purple,
            backgroundColor: Colors.black,
          )),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              ref.watch(helloWorldProvider),
              style: Theme
                  .of(context)
                  .textTheme
                  .titleLarge,
            ),
          ),
          body: const HomeBody(),
        ),
      ),
    );
  }
}
