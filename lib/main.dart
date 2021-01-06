import 'package:flutter/material.dart';
import 'package:fluttermoji/fluttermoji.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluttermoji Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: MyHomePage(title: 'Create Circle Avatar'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child:Icon(Icons.edit),
    onPressed: () => Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => Editpage())),


      ),
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
           
            FluttermojiCircleAvatar(
              backgroundColor: Colors.white,
              radius: 200,
            ),
            
           
          ],
        ),
      ),
    );
  }
}

class Editpage extends StatelessWidget {
  const Editpage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: FluttermojiCircleAvatar(
              backgroundColor: Colors.white,

                radius: 200,
              ),
            ),
            Expanded(
              child: FluttermojiCustomizer(
                  ),
            ),
          ],
        ),
      ),
    );
  }
}