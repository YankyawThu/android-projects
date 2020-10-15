import 'package:flutter/material.dart';

class Currency extends StatefulWidget {
  @override
  _CurrencyState createState() => _CurrencyState();
}

class _CurrencyState extends State<Currency> {
  Map data = {};
  List name = [];
  List value = [];

  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context).settings.arguments;
    name = data['name'];
    value = data['value'];


    return Scaffold(
      appBar: AppBar(
        title: Text('Currency API-Latest',
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
        backgroundColor: Colors.teal[600],
      ),
      body: ListView.builder(
        itemCount: value.length,
        itemBuilder: (context , index){
          return Card(
            margin: EdgeInsets.all(3.0),
              child: RaisedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/calculate' , arguments: {'name':name[index] , 'value':value[index]});
                },
                color: Colors.white,
                padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                child: Center(
                  child: Column(
                    children: [
                      Text('${name[index]} - ${value[index]}',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      Text('http://forex.cbm.gov.mm/api/latest',
                        style: TextStyle(
                          fontSize: 7.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, '/loading');
        },
        child: Icon(
          Icons.replay_circle_filled,
          size: 30.0,
        ),
        mini: true,
        backgroundColor: Colors.teal[400],
      ),
    );
  }
}
