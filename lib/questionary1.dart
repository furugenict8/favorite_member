import 'package:flutter/material.dart';
import 'main.dart';

class Questionary1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('質問1'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'タガメを揚げて食べるのは好きですか？',
                ),
              ),
              const RaisedButton(
                color: Colors.red,
                onPressed: null,
                child: Text('はい', style: TextStyle(fontSize: 20)),
              ),
              const RaisedButton(
                onPressed: null,
                child: Text('いいえ', style: TextStyle(fontSize: 20)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
