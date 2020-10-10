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
                pImagem: 'assets/trufamaracuja.png',
                pPreco: '3,00',
                pTitulo: 'Trufa Artesanal 30g ',
              ),
              Produto(
                pImagem: 'assets/trufazero30g.png',
                pPreco: '3,50',
                pTitulo: 'Trufa Zero Açucar ',
              ),
              Produto(
                pImagem: 'assets/trufazero30g.png',
                pPreco: '3,50',
                pTitulo: 'Trufa Zero Açucar ',
              ),
              Produto(
                pImagem: 'assets/byteAoLeite.png',
                pPreco: '3,50',
                pTitulo: 'Byte Ao Leite',
              ),
              Produto(
                pImagem: 'assets/byteUvaPassa.png',
                pPreco: '3,50',
                pTitulo: 'Trufa Artesanal ',
              ),
              Produto(
                pImagem: 'assets/bombomzeroacucar13g.png',
                pPreco: '2,50',
                pTitulo: 'Trufa Artesanal ',
              ),
              Produto(
                pImagem: 'assets/tablete5g.png',
                pPreco: '3,50',
                pTitulo: 'Trufa Artesanal ',
              ),
              Produto(
                pImagem: 'assets/tabletebenditocacao85porcento100g.png',
                pPreco: '3,50',
                pTitulo: 'Trufa Artesanal ',
              ),
              Produto(
                pImagem:
                    'assets/tabletebenditocacaoorgânico52porcentoorganico100g.png',
                pPreco: '3,50',
                pTitulo: 'Trufa Artesanal ',
              ),
              Produto(
                pImagem: 'assets/tabletelacremeaoleite20g.png',
                pPreco: '3,50',
                pTitulo: 'Trufa Artesanal ',
              ),
              Produto(
                pImagem: 'assets/tabletedreamspetitgateau130g.png',
                pPreco: '3,50',
                pTitulo: 'Trufa Artesanal ',
              ),
              Produto(
                pImagem: 'assets/pacoca.png',
                pPreco: '3,50',
                pTitulo: 'Trufa Artesanal ',
              ),
              Produto(
                pImagem: 'assets/tabletelanut100g.png',
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
