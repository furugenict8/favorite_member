import 'package:flutter/material.dart';
import 'package:whoIsYourFavoriteMember/questionary1.dart';
import 'package:whoIsYourFavoriteMember/video_detail_page.dart';

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

      //Navigate with Named route で画面遷移した。参考　https://flutter.dev/docs/cookbook/navigation/named-routes
      //Flutter大学動画　https://www.youtube.com/watch?v=PXnqg_Ozouk　17：29〜
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => FirstScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => Questionary1(),
      },
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
        actions: <Widget>[
          SizedBox(
              width: 44,
              child: FlatButton(
                child: Icon(Icons.more_vert),
                onPressed: () {
                  //todo 検索
                },
              ))
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: Image.network(
                        'https://yt3.ggpht.com/a/AATXAJx2LQwh1kNX09biNyCenCNGzh5Rvwoue-an_Q=s48-c-k-c0xffffffff-no-rj-mo'),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    children: <Widget>[
                      const Text('KBOYのFlutter大学'),
                      FlatButton(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.video_call,
                              color: Colors.red,
                            ),
                            Text('登録する'),
                          ],
                        ),
                        onPressed: () {
                          //To Do
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () async {
                      //TODO 画面遷移
                      await Navigator.pushNamed(context, '/second');
                    },
                    contentPadding: EdgeInsets.all(8),
                    leading: Image.network(
                        'https://i.ytimg.com/vi/PXnqg_Ozouk/maxresdefault.jpg'),
                    title: Column(
                      children: <Widget>[
                        Text(
                          '【Flutter超入門】リストを作る方法',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              '267回再生',
                              style: TextStyle(fontSize: 10),
                            ),
                            Text(
                              '5日前',
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
