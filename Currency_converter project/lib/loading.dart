import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'callapi.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  List value = [];
  List name = [];

  void call() async{
    Api api = new Api();
    await api.getapi();
    setState(() {
      name = api.name;
      value = api.value;
    });
    Navigator.pushReplacementNamed(context, '/currency',arguments: {'name':name , 'value':value});
  }

  @override
  // ignore: must_call_super
  void initState() {
    call();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Currency API',
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
        backgroundColor: Colors.teal[600],
      ),
      body: Center(
        child: SpinKitChasingDots(
          color: Colors.teal,
          size: 50.0,
        ),
      ),
    );
  }
}
