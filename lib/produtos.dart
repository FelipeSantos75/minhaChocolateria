import 'package:flutter/material.dart';

class Produtos extends StatelessWidget {
  final String titulo;
  final String preco;

  const Produtos({Key key, this.titulo, this.preco}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190,
      height: 110,
      margin: EdgeInsets.only(top: 20.0, left: 10, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            titulo,
            style: TextStyle(
              fontSize: 25,
              fontFamily: 'Sagona3',
            ),
          ),
          Text(
            'R\$ $preco',
            style: TextStyle(fontFamily: 'Foco2', fontSize: 25),
          ),
        ],
      ),
    );
  }
}
