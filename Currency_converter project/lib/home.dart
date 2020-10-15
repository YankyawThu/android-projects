import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/money.jpg'),
              fit: BoxFit.cover,
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              margin: EdgeInsets.fromLTRB(0, 100.0, 0, 0),
              color: Colors.transparent,
              child: RaisedButton(
                onPressed: (){
                    Navigator.pushNamed(context, '/loading');
                },
                color: Colors.teal[600],
                padding: EdgeInsets.all(30.0),
                child: Text('\' Lets See \'',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
