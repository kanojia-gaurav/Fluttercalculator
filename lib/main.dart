import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() =>runApp(MaterialApp(
  home: Home(),
));
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  TextEditingController A = new TextEditingController();
  TextEditingController B = new TextEditingController();

  double result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.green[500],
      title: Center(
        child: Text(
            'Calculator',
            style: TextStyle(
            fontSize: 20,
            letterSpacing: 2.0,
            fontWeight: FontWeight.bold,
        ),
        ),
      ),
    ),

    body: Column(
      children: [

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: A,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter Numer',
            ),
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: B,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter Numer',
            ),
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
        ),
        Row(
          children: [
            FlatButton(
              color: Colors.green[300],
              onPressed: (){
               setState((){
                 result = 0;
                 result = double.parse(A.text) + double.parse(B.text);
               });
                //print(A.text);
              },
              child: Text('+',
                style: TextStyle(
                  fontSize: 15,
                  letterSpacing: 2.0,
                ),
              ),
            ),
            SizedBox(width:2),
            FlatButton(
              color: Colors.green[300],
              onPressed: (){
                setState((){
                  result = 0;
                  result = double.parse(A.text) - double.parse(B.text);
                });
              },
              child: Text('-',
                style: TextStyle(
                  fontSize: 15,
                  letterSpacing: 2.0,
                ),
              ),

            ),
            SizedBox(width:2),

            FlatButton(
              color: Colors.green[300],
              onPressed: (){
                setState((){
                  result = 0;
                  result = double.parse(A.text) * double.parse(B.text);
                });
              },
              child: Text('*',
                style: TextStyle(
                  fontSize: 15,
                  letterSpacing: 2.0,
                ),
              ),
            ),
            SizedBox(width:2),

            FlatButton(
              color: Colors.green[300],
              onPressed: (){
                setState((){
                  result = 0;
                  result = double.parse(A.text) / double.parse(B.text);
                });
              },
              child: Text('/',
                style: TextStyle(
                  fontSize: 15,
                  letterSpacing: 2.0,
                ),
              ),
            ),
            SizedBox(width:2),
          ],
        ),

        //display result over here.
        SizedBox(height:15),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Result:$result',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
            ),
          ),
        ),

      ],
    ),

    );
  }
}


