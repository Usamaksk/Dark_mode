import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Icon Decoratrion'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
     bool darkmode = false;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: darkmode ? Colors.grey[300]:Colors.grey[850],
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              child: Icon(Icons.android, size: 80, color: darkmode ? Colors.black:Colors.white,),
              decoration: BoxDecoration(
                  color: darkmode ? Colors.grey[300]:Colors.grey[850],
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  boxShadow: [
                    BoxShadow(
                      color: darkmode ? Colors.grey[500]! : Colors.grey[900]!,
                      offset: Offset(5.0, 5.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    ),
                    BoxShadow(
                      color: darkmode ? Colors.white! : Colors.grey[800]!,
                      offset: Offset(-5.0, -5.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    ),
                  ]),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        darkmode = true;
                      });
                    },
                    child: Text(
                      'Light',
                      style: TextStyle(color: Colors.black),
                    ),
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        darkmode = false;
                      });
                    },
                    child: Text(
                      'Dark',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.grey[850]
                    ),
                  ),
                ],
              ),
            )
          ],
        )));
  }
}
