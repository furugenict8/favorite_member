//なこち質問ページ

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whoIsYourFavoriteMember/question2_model.dart';
import 'package:whoIsYourFavoriteMember/question3.dart';

class Question2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Question2Model>(
      create: (_) => Question2Model(),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('質問2'),
        ),
        body: Consumer<Question2Model>(builder: (context, model, child) {
          return Container(
            color: model.bodyColor,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Salesforceエンジニアっていいよね',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                      color: Colors.blue,
                      onPressed: () {
                        //次の画面へ
                        //TODO なこちに＋1ポイント
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Question3()),
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Question3()),
                        );
                      },
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0.0),
                      child: const Text('いいえ', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                      color: Colors.blue,
                      onPressed: () {
                        //TODO 背景色をかえる
                        model.changeQuestion2BackGroundColor();
                      },
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0.0),
                      child: const Text('背景色をかえてみる',
                          style: TextStyle(fontSize: 20)),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
