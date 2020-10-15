import 'package:flutter/material.dart';

class Calculate1 extends StatefulWidget {
  @override
  _Calculate1State createState() => _Calculate1State();
}

class _Calculate1State extends State<Calculate1> {
  final myController = TextEditingController();
  Map data = {};
  var name;
  var value;
  double fix = 0.0;

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    var val = '';

    data = ModalRoute.of(context).settings.arguments;
    name = data['name'];
    value = data['value'];
    RegExp exp = new RegExp("[0-9+.]");
    Iterable<Match> matches = exp.allMatches(data['value']);
    for (Match m in matches) {
      val += m.group(0);
    }



    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('MMK - $name',
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
        backgroundColor: Colors.teal[600],
      ),
      body: Card(
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Center(
              child: Padding(
                padding: EdgeInsets.fromLTRB(30.0, 100.0, 30.0, 20.0),
                child: Text('$fix',
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 100.0),
              child: Text('($name)',
              style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            Text('1 $name - $value MMK'),
            Padding(
              padding: EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 20.0),
              child: TextFormField(
                controller: myController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Myanmar kyat',
                ),
              ),
            ),
            RaisedButton(
              onPressed: (){
                setState(() {
                  fix = double.parse(myController.text) / double.parse(val);
                });
              },
              child: Text('OK'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushReplacementNamed(context, '/calculate', arguments: {'name':name , 'value':value});
        },
        child: Text('1'),
      ),
    );
  }
}
