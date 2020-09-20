import 'package:flutter/material.dart';
import 'package:minhaChocolateria/produto.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
          
          color: Color(0xffefeae2),
          child: ListView(
            children: [
              Produto(
                pImagem: 'assets/trufazero30g.png',
                pPreco: '3,50',
                pTitulo: 'Trufa Zero Açucar ',
              ),
              Center(child: Text('---------------------')),
              Produto(
                pImagem: 'assets/trufazero30g.png',
                pPreco: '3,50',
                pTitulo: 'Trufa Artesanal ',
              ),
              Produto(
                pImagem: 'assets/trufazero30g.png',
                pPreco: '3,50',
                pTitulo: 'Trufa Artesanal ',
              ),
              Produto(
                pImagem: 'assets/trufazero30g.png',
                pPreco: '3,50',
                pTitulo: 'Trufa Artesanal ',
              ),
              Produto(
                pImagem: 'assets/trufazero30g.png',
                pPreco: '3,50',
                pTitulo: 'Trufa Artesanal ',
              ),
              Produto(
                pImagem: 'assets/trufazero30g.png',
                pPreco: '3,50',
                pTitulo: 'Trufa Artesanal ',
              ),
              Produto(
                pImagem: 'assets/trufazero30g.png',
                pPreco: '3,50',
                pTitulo: 'Trufa Artesanal ',
              ),
              Produto(
                pImagem: 'assets/trufazero30g.png',
                pPreco: '3,50',
                pTitulo: 'Trufa Artesanal ',
              ),
              Produto(
                pImagem: 'assets/trufazero30g.png',
                pPreco: '3,50',
                pTitulo: 'Trufa Artesanal ',
              ),
              Produto(
                pImagem: 'assets/trufazero30g.png',
                pPreco: '3,50',
                pTitulo: 'Trufa Artesanal ',
              ),
            ],
          )),
      bottomSheet: Container(
        width: double.infinity,
        height: 50,
        color: Color(0xff5f2d1a),
      ),
    );
  }
}
