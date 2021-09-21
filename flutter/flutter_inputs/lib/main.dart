import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController nomeController = TextEditingController();
  String exibirNome = "Seu nome aqui";
  @override
  Widget build(BuildContext context) { 
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text("App Hello com Flutter"),
          centerTitle: true, 
        ),
        body: _body(),
      ),
    );
  }
  void exibeNome() {
    setState(() {
      if(nomeController.text.length > 2) {
        exibirNome = "Seu nome é ${nomeController.text}";
      } else {
        exibirNome = "Seu nome é muito curto";
      }
    });
  }
  _body() {
    return Container(
      width: 400,
      color: Colors.white10,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start, 
        children: <Widget>[
          _campo(),
          _button(),
          _texto()
        ],
      ),
    );
  }

  _campo() {
    return TextField(
      keyboardType: TextInputType.text, 
      decoration: InputDecoration(
          labelText: "Digite o seu nome",
          labelStyle: TextStyle(color: Colors.green)),
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.green, fontSize: 25.0),
      controller: nomeController,
    );
  }

  _texto() {
    return Text("$exibirNome");
  }

  _button() {
    return RaisedButton(
      color: Colors.green,
      //onPressed: null,
      //onPressed: () {
      //print("Okay!");
      //},
      onPressed: exibeNome,
      child: Text(
        "OK",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }

  onClick() {
    print("Clicou aqui");
  }
}
