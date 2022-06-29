import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(const FlutterApp());

class FlutterApp extends StatefulWidget {
  const FlutterApp({Key? key}) : super(key: key);

  @override
  _FlutterAppState createState() => _FlutterAppState();
}

class _FlutterAppState extends State<FlutterApp> {
  void showToast(){
    Fluttertoast.showToast(
      msg: 'Toast notification',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.yellow
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Toast Widget'),
        ),
        body: Center(
          child: RaisedButton(
            child: const Text('Click to show'),
            onPressed: showToast,
          ),
        ),
      ),
    );
  }
}