//ニッチっち質問ページ

import 'package:flutter/material.dart';
import 'questionary2.dart';

class Questionary1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('質問1'),
      ),
      body: Container(
        color: Colors.green,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'タガメを揚げて食べるのは好きですか？',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  color: Colors.blue,
                  onPressed: () {
                    //TODO ニッチっちに＋1ポイント
                    //次の画面へ
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Questionary2()),
                    );
                  },
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0.0),
                  child: const Text('はい', style: TextStyle(fontSize: 20)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  color: Colors.blue,
                  onPressed: () {
                    //TODO 次の画面へ
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Questionary2()),
                    );
                  },
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0.0),
                  child: const Text('いいえ', style: TextStyle(fontSize: 20)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
