import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class BookList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //buildについて調べよう
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('firebaseテスト'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        //stream StreamBuilderにまずstreamを組み込む　snapshot() はその時点のデータ（状態）を丸ごと読み込むもの。
        stream: Firestore.instance.collection('books').snapshots(),
        //builder アプリの当該部分の外観を宣言する
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          return ListView(
            children: snapshot.data.documents.map((DocumentSnapshot document) {
              return ListTile(
                title: Text(document['title']),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
