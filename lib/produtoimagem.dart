import 'package:flutter/material.dart';

class ProdutoImagem extends StatelessWidget {
  final String urlImagem;

  const ProdutoImagem({Key key, this.urlImagem}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20,
      ),
      decoration: BoxDecoration(
        color: Color(0xffaaaaaa).withOpacity(0.2),
        borderRadius: BorderRadius.circular(
          25,
        ),
        image: DecorationImage(
          image: AssetImage(urlImagem),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
