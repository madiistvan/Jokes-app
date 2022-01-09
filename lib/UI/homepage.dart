import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Model/JokeModel.dart';
import 'CounterPage.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    final joke=Provider.of<JokeModell>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Do you want to hear a joke?',
              textAlign: TextAlign.center,
              style:  TextStyle(fontSize: 35.00),
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
                    MaterialPageRoute(builder: (context) =>CounterPage(title: 'Jokes',type: 'Programming',)),
                  );
                },
                child: Text(
                  'Programming',
                  style:  TextStyle(fontSize: 30.00),

                )
            ),
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
                    MaterialPageRoute(builder: (context) =>CounterPage(title: 'Jokes',type: 'Dark',)),
                  );
                },
                child: Text(
                    'Dark',
                    style:  TextStyle(fontSize: 30.00),
            )
            ),
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
                    MaterialPageRoute(builder: (context) =>CounterPage(title: 'Jokes',type: 'Pun',)),
                  );
                },
                child: Text(
                    'Pun',
                  style:  TextStyle(fontSize: 30.00),
                )
            ),
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
                    MaterialPageRoute(builder: (context) =>CounterPage(title: 'Jokes',type: 'Spooky',)),
                  );
                },
                child: Text(
                    'Spooky',
                    style:  TextStyle(fontSize: 30.00),
                )
            ),
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
                    MaterialPageRoute(builder: (context) =>CounterPage(title: 'Jokes',type: 'Christmas',)),
                  );
                },
                child: Text(
                    'Christmas',
                  style:  TextStyle(fontSize: 30.00),
                )
            ),
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
                    MaterialPageRoute(builder: (context) =>CounterPage(title: 'Jokes',type: 'Misc',)),
                  );
                },
                child: Text(
                  'Misc',
                  style:  TextStyle(fontSize: 30.00),
                )
            ),
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
                    MaterialPageRoute(builder: (context) =>CounterPage(title: 'Jokes',type: 'Any',)),
                  );
                },
                child: Text(
                  'Random',
                  style:  TextStyle(fontSize: 30.00),
                )
            )
          ],
        ),
      ),
    );
  }

}