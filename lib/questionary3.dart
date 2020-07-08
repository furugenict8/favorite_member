//　まいちゃ質問ページ

import 'package:flutter/material.dart';
import 'package:whoIsYourFavoriteMember/what_is_your_favorite_color.dart';

class Questionary3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('質問3'),
      ),
      body: Container(
        color: Colors.pinkAccent,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'AWSに興味がある？',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  color: Colors.blue,
                  onPressed: () {
                    //次の画面へ
                    //TODO まいちゃ＋1ポイント
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WhatIsYourFavoriteColor()),
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
                      MaterialPageRoute(
                          builder: (context) => WhatIsYourFavoriteColor()),
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
