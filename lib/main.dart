import 'package:flutter/material.dart';
import 'package:whoIsYourFavoriteMember/questionary1.dart';

void main() {
  runApp(App());
}

final items = List<String>.generate(8, (i) => "Item $i");

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('あなたは誰推し？'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('あなたの推しメンを判定します。'),
            ),
            RaisedButton(
              child: Text('スタート！'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Questionary1()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
