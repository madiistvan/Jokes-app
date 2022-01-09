import 'package:flutter/material.dart';
import 'package:flutter_hf/Model/JokeModel.dart';
import 'package:provider/provider.dart';
import 'UI/homepage.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => JokeModell(),
      child: MaterialApp(
          home: MyHomePage(title: 'Jokes')
      ),
    );
  }
}


