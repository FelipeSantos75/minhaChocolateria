import 'package:flutter/material.dart';
import 'package:minhaChocolateria/produtoimagem.dart';
import 'package:minhaChocolateria/produtos.dart';

class Produto extends StatelessWidget {
  final String pImagem, pTitulo, pPreco;

  const Produto({Key key, this.pImagem, this.pTitulo, this.pPreco}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        ProdutoImagem(
          urlImagem: pImagem,
          titulo: pTitulo,
          preco: pPreco,
        ),
        //Produtos(
        //  titulo: pTitulo,
        //  preco: pPreco,
        //),
      ],
    ));
  }
}
