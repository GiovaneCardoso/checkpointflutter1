import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  num total = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador de pessoas',
      home: Scaffold(
        appBar: _appbar(),
        body: _body(),

      ) 

      
    );
  }
  _appbar() {
    return AppBar(
      title: Text('Contador de pessoas'),
      backgroundColor: Colors.green,
      centerTitle: true,
    );
  }
  _body() {
    return Container(
      child: Center(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              margin: EdgeInsets.all(20.0),
              child: Padding(
              padding: EdgeInsets.all(40.0),
              
              child: Text(
                '$total',
                style: TextStyle(
                  fontSize: 32.0,
                  color: Colors.red
                ),
                ),
              ),
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _button('-', Colors.red),
                _button('+', Colors.green),
              ],
            )
          ],
        ),
      ),
    );
  }
  _button(String signal, Color color) {
    return RaisedButton(
      onPressed: (){
        _atualizaTotal(signal);
      },
      
      child: _placar(signal, color)
    );
  }
  _placar(signal, color) {
    return Text(
        signal,
        style: TextStyle(
          fontSize: 40,
          color: color
        )
      );
  }
  _atualizaTotal(signal) {
    setState(() {
      signal == '+' ? total++ : total--;
    });
  }

}