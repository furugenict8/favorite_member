//電脳カプセル担当カラー決定！
//まいちゃピンクハート
//@maicha_dcap
//
//なこち青のハート
//@nakochi_dcap
//
//あずき白のハート
//@azuki_dcap
//
//maru赤色のハート
//@maru_dcap
//
//Emily黒いハート
//@emily_dcap
//
//にっちっち緑のハート
//@niche_chi_dcap
//
//愛理RaM紫のハート
//@airiram_dcap

import 'package:flutter/material.dart';
import 'package:whoIsYourFavoriteMember/questionary1.dart';
import 'package:whoIsYourFavoriteMember/who_is_your_favorite_member.dart';

class WhatIsYourFavoriteColor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('あなたは何色が好き？'),
      ),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  color: Colors.blue,
                  onPressed: () {
                    //次の画面へ
                    //TODO なこちに＋1ポイント
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WhoIsYourFavoriteMember()),
                    );
                  },
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0.0),
                  child: const Text('青', style: TextStyle(fontSize: 20)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  color: Colors.green,
                  onPressed: () {
                    //TODO にっちっちに1ポイント
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WhoIsYourFavoriteMember()),
                    );
                  },
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0.0),
                  child: const Text('緑', style: TextStyle(fontSize: 20)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  color: Colors.pinkAccent,
                  onPressed: () {
                    //次の画面へ
                    //TODO まいちゃに＋1ポイント
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WhoIsYourFavoriteMember()),
                    );
                  },
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0.0),
                  child: const Text('ピンク', style: TextStyle(fontSize: 20)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  color: Colors.white,
                  onPressed: () {
                    //次の画面へ
                    //TODO　あずき＋1ポイント
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WhoIsYourFavoriteMember()),
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
                  color: Colors.red,
                  onPressed: () {
                    //次の画面へ
                    //TODO まるに＋1ポイント
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WhoIsYourFavoriteMember()),
                    );
                  },
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0.0),
                  child: const Text('赤', style: TextStyle(fontSize: 20)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  color: Colors.black,
                  onPressed: () {
                    //次の画面へ
                    //TODO Emily＋1ポイント
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WhoIsYourFavoriteMember()),
                    );
                  },
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0.0),
                  child: const Text('黒', style: TextStyle(fontSize: 20)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  color: Colors.purple,
                  onPressed: () {
                    //次の画面へ
                    //TODO 愛理RaMに＋1ポイント
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WhoIsYourFavoriteMember()),
                    );
                  },
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0.0),
                  child: const Text('紫', style: TextStyle(fontSize: 20)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
