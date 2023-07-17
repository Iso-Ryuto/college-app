import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:test2/third_page.dart';
//import 'footer.dart';
//import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'dart:io';
import 'package:webview_flutter/webview_flutter.dart';
import 'fitst_page.dart';
import 'second_page.dart';
import 'third_page.dart';
import 'fourth.dart';
import 'insta_page.dart';
import 'info_page.dart';
import 'calendar.dart';
import 'kiyaku.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Mannaポータル',
      home: MyHomePage(title: 'Mannaポータル'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /*@override
  void initState() {
    super.initState();
    // Androidに対応させる
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Color.fromRGBO(34, 34, 34, 1)),
        backgroundColor: Colors.white,
        title: Image.asset(
          'images/Manna.png',
          height: 100,
          width: 120,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CalendarPage()),
              );
            },
            icon: const Icon(LineIcons.calendar),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            /*const DrawerHeader(
              child: null,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage("images/Manna.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),*/
            const ListTile(
              title: null,
            ),
            ListTile(
              leading: const Icon(LineIcons.instagram),
              title: const Text('Instagram'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InstaPage()),
                );
              },
            ),
            /*ListTile(
              leading: const Icon(Icons.sentiment_satisfied),
              title: const Text('利用ガイド'),
              onTap: () {},
            ),*/
            ListTile(
              leading: const Icon(LineIcons.info),
              title: const Text('お問い合わせ'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InfoPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.sticky_note_2),
              title: const Text('利用規約'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KiyakuPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FirstPage()),
                    );
                  },
                  child: const Card(
                    child: ListTile(
                      leading: Icon(Icons.restaurant),
                      title: Text('学食メニュー'),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondPage()),
                    );
                  },
                  child: const Card(
                    child: ListTile(
                      leading: Icon(Icons.school),
                      title: Text('授業検索'),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ThirdPage()),
                    );
                  },
                  child: const Card(
                    child: ListTile(
                      leading: Icon(LineIcons.calendar),
                      title: Text('学年歴ダウンロード'),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FourthPage()),
                    );
                  },
                  child: const Card(
                    child: ListTile(
                      leading: Icon(LineIcons.phone),
                      title: Text('各種連絡先'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //const Footer()
        ],
      ),
    );
  }
}
