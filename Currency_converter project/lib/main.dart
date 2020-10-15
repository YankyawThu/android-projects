
import 'package:flutter/material.dart';
import 'home.dart';
import 'loading.dart';
import 'currency.dart';
import 'calculate.dart';
import 'calculate1.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/loading' : (context) => Loading(),
        '/currency' : (context) => Currency(),
        '/calculate' : (context) => Calculate(),
        '/calculate1' : (context) => Calculate1(),
      },
  ));
}
