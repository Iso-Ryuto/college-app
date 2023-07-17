import 'package:flutter/material.dart';
import 'dart:io';
import 'main.dart';

void main() {
  runApp(const MyApp());
}

class KiyakuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
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
        //leading: const Icon(Icons.menu),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset('images/riyoukiyaku.png'),
        ]),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    // Androidに対応させる
    //if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

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
        //leading: const Icon(Icons.menu),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset('images/riyoukiyaku.png'),
        ]),
      ),
    );
  }
}
