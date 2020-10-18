import 'package:flutter/material.dart';

class ProdutoImagem extends StatelessWidget {
  final String urlImagem;
  final String titulo;
  final String preco;

  const ProdutoImagem({
    this.urlImagem,
    this.titulo,
    this.preco,
  });
  @override
  Widget build(BuildContext context) {
    var alturaDisponivel = MediaQuery.of(context).size.height;
    var larguraDisponivel = MediaQuery.of(context).size.width;
    return Container(
      // borda do produto

      margin: EdgeInsets.only(
        top: alturaDisponivel * 0.02,
        left: larguraDisponivel * 0.02,
      ),
      decoration: BoxDecoration(
        color: Color(0xfff9e0a8).withOpacity(0.8),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(35),
          bottomLeft: Radius.circular(45),
          bottomRight: Radius.circular(15),
        ),
        
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          
          Expanded(
            flex: 10,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(urlImagem),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ), 
          Expanded(
            flex: 2,
            //Titulo do Produto,
            child: Container(
              padding: EdgeInsets.all(1),
              width: larguraDisponivel * 0.30,
              child: FittedBox(
                child: Text(
                  titulo,
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Sagona',
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            //padding: EdgeInsets.all(2),
            //width: larguraDisponivel*0.15,
            child: FittedBox(
              child: Text(
                'R\$ $preco',
                style: TextStyle(
                  fontFamily: 'Foco',
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
