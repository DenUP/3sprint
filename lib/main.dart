import 'package:flutter/material.dart';
import 'package:matule_test/core/dio_network.dart';
import 'package:matule_test/story_book.dart';
import 'package:network/network.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  final dio = await DioNetwork.dioCreate(); // перехватчик уже добавлен
  final network = Network(dio: dio);
  final shared = await SharedPreferences.getInstance();
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: StoryBook());
  }
}
