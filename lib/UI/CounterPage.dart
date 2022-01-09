import 'package:flutter/material.dart';
import 'package:flutter_hf/API/JokeAPI.dart';
import 'package:flutter_hf/Model/JokeModel.dart';
import 'package:flutter_hf/UI/JokePage.dart';
import '../Model/JsonJokes.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget {
  CounterPage({ Key? key, required this.title,required this.type}) : super(key: key);
  final String title;
  final String type;
  String? alma;


  @override
  Widget build(BuildContext context) {
    final k= Provider.of<JokeModell>(context,listen: true);
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'How many '+type+' jokes do you want to hear?',
            style:  TextStyle(fontSize: 30.00),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 100),
          Container(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FloatingActionButton(
                    onPressed:(){
                      k.decrease();
                    } ,
                    child:  Icon(
                        Icons.remove,
                        color: Colors.black),
                    backgroundColor: Colors.white,),


                   Text(k.counter.toString(),
                      style:  TextStyle(fontSize: 60.00)
                   ),
                  FloatingActionButton(
                    onPressed:(){
                      k.increase();
                    } ,
                    child:  Icon(Icons.add, color: Colors.black,),
                    backgroundColor: Colors.white,
                  ),

                ],
              ),
            ),
          ),
          SizedBox(height: 100),
          TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                overlayColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.hovered))
                      return Colors.blue.withOpacity(0.04);
                    if (states.contains(MaterialState.focused) ||
                        states.contains(MaterialState.pressed))
                      return Colors.blue.withOpacity(0.5);
                    return Colors.blue.withOpacity(0.5);
                  },
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>JokePage(title: 'Jokes',type: type,num: k.counter,)),
                );
              },
              child: Text(
                  'Show me the jokes!',
                  style:  TextStyle(fontSize: 30.00))


    ),
        ],
      )
    );

  }

}
/*
*
*
*
* */