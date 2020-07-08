//ニッチっち質問ページ

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whoIsYourFavoriteMember/question1_model.dart';
import 'question2.dart';

class Question1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Question1Model>(
      //provider使うため20200708
      create: (_) => Question1Model(),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('質問1'),
        ),
        body: Consumer<Question1Model>(builder: (context, model, child) {
          //provider使うため20200708
          return Container(
            color: Colors.green,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      model.question1Text,
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
                        //TODO ニッチっちに＋1ポイント
                        //次の画面へ
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Question2()),
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
                          MaterialPageRoute(builder: (context) => Question2()),
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
                        //TODO 質問を変更する
                        model.changeQuestion1Text();
                      },
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0.0),
                      child:
                          const Text('質問を変更する', style: TextStyle(fontSize: 20)),
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
