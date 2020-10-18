import 'package:flutter/material.dart';

import 'package:minhaChocolateria/produtoimagem.dart';
import 'package:minhaChocolateria/produtos.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xff5f2d1a),
        primarySwatch: Colors.brown,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Foco2',
      ),
      home: MyHomePage(title: 'Tabela de Preços'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void atualizaState() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      title: Text(widget.title),
    );
    var alturaDisponivel =
        MediaQuery.of(context).size.height - appBar.preferredSize.height;

    return Scaffold(
      appBar: appBar,
      body: Container(
        height: alturaDisponivel,
        color: Color(0xffefeae2),
        child: Produtos(),
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: alturaDisponivel * 0.03,
        decoration: BoxDecoration(
          color: Color(0xff5f2d1a),
          
        ),
      ),
    );
  }
}
