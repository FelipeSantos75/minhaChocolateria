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
    return Container(
      width: 150,
      height: 220,
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
            padding: EdgeInsets.all(8),
            child: Text(
              titulo,
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Sagona3',
              ),
            ),
          ),
          Container(
            height: 100,
            width: 150,
            decoration: BoxDecoration(
        
          image: DecorationImage(
            image: AssetImage(urlImagem),
            fit: BoxFit.cover,
          ),
            
          ),
          ),
          Container(
            padding: EdgeInsets.all(8),
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
