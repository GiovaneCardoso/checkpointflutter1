import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  TextEditingController alcoolController = TextEditingController();
  TextEditingController gasolinaController = TextEditingController();
  String resultado = "";
  void _calcular() {
    setState(() {
      double precoAlcool = double.parse(alcoolController.text);
      double precoGasolina = double.parse(gasolinaController.text);

      resultado = precoAlcool / precoGasolina > 0.7 ? "Gasolina mais vantajosa" : "Alcool mais vantajoso";
    });

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Alcool vs Gasolina",
      home: Scaffold(
        appBar: _appbar(),
        body: _body()
      )
    );
  }
_appbar() {
  return AppBar(
    title: Text("Alcool vs Gasolina"),
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
        _inputAlcool(),
        _inputGasolina(),
        _button(),
        _resultado()
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
_inputAlcool() {
  return TextField(
    keyboardType: TextInputType.number,
    decoration: InputDecoration(
      labelText: "Preço Alcool",
      labelStyle: TextStyle(color: Colors.blue)
    ),
    style: TextStyle(color: Colors.blue, fontSize: 25),
    textAlign: TextAlign.center,
    controller: alcoolController,
  );

}
_inputGasolina() {
  return TextField(
    keyboardType: TextInputType.number,
    decoration: InputDecoration(
      labelText: "Preço Gasolina",
      labelStyle: TextStyle(color: Colors.blue)
    ),
    style: TextStyle(color: Colors.blue, fontSize: 25),
    textAlign: TextAlign.center,
    controller: gasolinaController,
  );

}
_button() {
  return RaisedButton(
    onPressed: _calcular,
    
    child: Text("Calcular")
  );
}
_resultado() {
  return Text("$resultado");
}
}