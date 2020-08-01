import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animated_splash_screen/animation_screen.dart';

import 'example_start_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Raindrop App',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: <Widget>[
          Scaffold(
            appBar: AppBar(
              title: Text('Raindrop App'),
            ),
            body: ExampleStartScreen()
          ),
          IgnorePointer(
            child: AnimationScreen(
              color: Theme.of(context).accentColor
            )
          )
        ]
      )
    );
  }
}


