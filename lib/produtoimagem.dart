import 'package:flutter/material.dart';
import 'package:minhaChocolateria/produtos.dart';

class ProdutoImagem extends StatelessWidget {
  final String urlImagem;
  final String titulo;
  final String preco;

  const ProdutoImagem({Key key, this.urlImagem, this.titulo, this.preco})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    var alturaDisponivel = MediaQuery.of(context).size.height;
    var larguraDisponivel = MediaQuery.of(context).size.width;
    return Container(
      width: larguraDisponivel*0.3,
      height: alturaDisponivel*0.7,
      margin: EdgeInsets.only(
        top: 10.0,
        left: 20,
      ),
      decoration: BoxDecoration(
        color: Color(0xffaaaaaa).withOpacity(0.2),
        borderRadius: BorderRadius.circular(
          25,
        ),
        //  image: DecorationImage(
        //    image: AssetImage(urlImagem),
        //    fit: BoxFit.cover,
        //  ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(6),
            child: FittedBox(
              child: Text(
                titulo,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Sagona3',
                ),
              ),
            ),
          ),
          Container(
            height: alturaDisponivel*0.13,
            width: larguraDisponivel*0.3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(urlImagem),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(4),
            child: FittedBox(
              child: Text(
                'R\$ $preco',
                style: TextStyle(fontFamily: 'Foco2', fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
