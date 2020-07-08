import 'package:flutter/material.dart';
import 'package:whoIsYourFavoriteMember/question1_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO AppBarの戻るボタンを表示しないようにしたい。20200708
      appBar: AppBar(
        centerTitle: true,
        title: const Text('あなたは誰推し？'),
      ),
      body: Center(
        //背景に各アイドルの画像8分割で表示。
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'あなたの推しメンを判定します。',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            RaisedButton(
              child: Text('スタート！'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Question1()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
