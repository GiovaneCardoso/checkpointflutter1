import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  
  String resultado = "O numero é...";
  void _calcular() {
    setState(() {

      resultado = new Random().nextInt(10).toString();
    });

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Jogo do N aleatório",
      home: Scaffold(
        appBar: _appbar(),
        body: _body()
      )
    );
  }
_appbar() {
  return AppBar(
    title: Text("Jogo do N Aleatório"),
    backgroundColor: Colors.blue,
    centerTitle: true,
  );
}
_body() {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _image(),
        _presentationText(),
        _resultado(),
        _button()
      ]
    )
  );
}
_image() {
    return Center(
      child: Image.network(
        'https://s2.glbimg.com/fLLjtcmosminFpbQVwWjJ6qEdNU=/512x320/smart/e.glbimg.com/og/ed/f/original/2015/09/10/ads_macgyver1.jpg',
        height: 150,
        width: 150,
      ),
    );

}
_presentationText() {
  return Text(
    "Pense em um n de 0 a 10",
    style: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold
      )
  );
}


_button() {
  return RaisedButton(
    onPressed: _calcular,
    
    child: Text("Descobrir")
  );
  }
  _resultado() {
    return Text("$resultado");
  }
}