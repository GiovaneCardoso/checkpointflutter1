import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController n1Controller = TextEditingController();
  TextEditingController n2Controller = TextEditingController();

  String infoResultado = "Informe os números!";

  void _calcular() {
    setState(() {
      double n1 = double.parse(n1Controller.text);
      double n2 = double.parse(n2Controller.text);

      double resultado = n1 * n2;
      infoResultado = 'Resultado: $resultado';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Multiplicador de Números"),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        backgroundColor: Colors.white,
        body: _body());
  }

  _body() {
    return SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0.0), child: _mainColumn());
  }

  _mainColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        _textField1(),
        _textField2(),
        _button(),
        _resultado()
      ],
    );
  }

  _textField1() {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: "Digite o 1° número",
          labelStyle: TextStyle(color: Colors.green)),
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.green, fontSize: 25.0),
      controller: n1Controller,
    );
  }

  _textField2() {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: "Digite o 2° número",
          labelStyle: TextStyle(color: Colors.green)),
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.green, fontSize: 25.0),
      controller: n2Controller,
    );
  }

  _button() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Container(
        height: 50.0,
        child: RaisedButton(
          onPressed: _calcular,
          child: Text("Calcular",
              style: TextStyle(color: Colors.white, fontSize: 20.0)),
          color: Colors.blue,
        ),
      ),
    );
  }

  _resultado() {
    return Text(
      infoResultado,
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.red, fontSize: 25.0),
    );
  }
}
