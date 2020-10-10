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
    var alturaDisponivel = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
          color: Color(0xffefeae2),
          child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 2,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: [
              Produto(
                pImagem: 'assets/trufamaracuja.png',
                pPreco: '3,00',
                pTitulo: 'Trufas 30g',
              ),
              Produto(
                pImagem: 'assets/trufazero30g.png',
                pPreco: '3,50',
                pTitulo: 'Trufas Especiais 30g',
              ),
              Produto(
                pImagem: 'assets/byteAoLeite.png',
                pPreco: '3,50',
                pTitulo: 'Byte Ao Leite',
              ),
              Produto(
                pImagem: 'assets/byteUvaPassa.png',
                pPreco: '3,50',
                pTitulo: 'Byte Uva Passa',
              ),
              Produto(
                pImagem: 'assets/bombomzeroacucar13g.png',
                pPreco: '2,50',
                pTitulo: 'Bombom',
              ),
              Produto(
                pImagem: 'assets/tablete5g.png',
                pPreco: '0,90',
                pTitulo: 'Tabletes 5g',
              ),
              Produto(
                pImagem: 'assets/tabletebenditocacao85porcento100g.png',
                pPreco: '14,50',
                pTitulo: 'Tablete 85% 100g',
              ),
              Produto(
                pImagem:
                    'assets/tabletebenditocacaoorgânico52porcentoorganico100g.png',
                pPreco: '3,50',
                pTitulo: 'Tablete 52% org. 100g',
              ),
              Produto(
                pImagem: 'assets/tabletelacremeaoleite20g.png',
                pPreco: '3,00',
                pTitulo: 'Tablete 20g',
              ),
              Produto(
                pImagem: 'assets/tabletelanut100g.png',
                pPreco: '13,50',
                pTitulo: 'Tablete LaNut 100g',
              ),
              Produto(
                pImagem: 'assets/pacoca.png',
                pPreco: '10,00',
                pTitulo: 'Tablete 100g',
              ),
              Produto(
                pImagem: 'assets/tabletelacremeaoleite100g.png',
                pPreco: '13,00',
                pTitulo: 'Tablete LaCreme 100g',
              ),
              Produto(
                pImagem: 'assets/tabletedreamspetitgateau130g.png',
                pPreco: '15,00',
                pTitulo: 'Tablete Dreams 130g',
              ),
              Produto(
                pImagem: 'assets/miau70g.png',
                pPreco: '11,00',
                pTitulo: 'Miau ao Leite',
              ),
              
            ],
          ),
          
          ),
      bottomSheet: Container(
        width: double.infinity,
        height: alturaDisponivel*0.03,
        color: Color(0xff5f2d1a),
      ),
    );
  }
}
