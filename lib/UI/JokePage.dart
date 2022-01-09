import 'package:flutter/material.dart';
import 'package:flutter_hf/API/JokeAPI.dart';
import '../Model/JsonJokes.dart';

class _JokePageState extends State<JokePage> {
  _JokePageState({required this.title, required this.type, required this.num})
      : super();

  final String title;
  final String type;
  final int num;
  JokesAPI j = JokesAPI();
  late String setup;
  late String delivery;
  Future<List<JsonJokes>>? jokeItem;

  @override
  void initState() {
    jokeItem = j.fetchJokes(type,num);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: new ListView(
            children: new List.generate(
          num,
          (index) =>  FutureBuilder<List<JsonJokes>>(
            future: jokeItem,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var list =snapshot.data;
                delivery = list![index].delivery ?? "";
                setup = list[index].setup ?? "";
                if (setup != "") setup += '\n';
                if (delivery != "") delivery += '\n';
                return Text(
                  '$setup$delivery',
                  style: TextStyle(fontSize: 30.00),
                  textAlign: TextAlign.justify,

                );
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              return CircularProgressIndicator();
            },
          ),
        )));
  }
}

class JokePage extends StatefulWidget {
  JokePage(
      {Key? key, required this.title, required this.type, required this.num})
      : super(key: key);
  final String title;
  final String type;
  final int num;

  @override
  _JokePageState createState() =>
      _JokePageState(title: title, type: type, num: num);
}
