import 'package:flutter/material.dart';
import 'package:minhaChocolateria/produtoimagem.dart';

class Produtos extends StatelessWidget {
  

  const Produtos();
  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(10),
          crossAxisSpacing: 1,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: [
            ProdutoImagem(
              urlImagem: 'assets/trufamaracuja.png',
              preco: '3,00',
              titulo: 'Trufas 30g',
              
              
            ),
            ProdutoImagem(
              urlImagem: 'assets/trufazero30g.png',
              preco: '3,50',
              titulo: 'Trufas Especiais 30g',
            ),
            ProdutoImagem(
              urlImagem: 'assets/byteAoLeite.png',
              preco: '10,50',
              titulo: 'Byte Ao Leite',
            ),
            ProdutoImagem(
              urlImagem: 'assets/byteUvaPassa.png',
              preco: '10,50',
              titulo: 'Byte Uva Passa',
            ),
            ProdutoImagem(
              urlImagem: 'assets/bombomzeroacucar13g.png',
              preco: '2,50',
              titulo: 'Bombom',
            ),
            ProdutoImagem(
              urlImagem: 'assets/tablete5g.png',
              preco: '0,90',
              titulo: 'Tabletes 5g',
            ),
            ProdutoImagem(
              urlImagem: 'assets/tabletebenditocacao85porcento100g.png',
              preco: '14,50',
              titulo: 'Tablete 85% 100g',
            ),
            ProdutoImagem(
              urlImagem:
                  'assets/tabletebenditocacaoorgânico52porcentoorganico100g.png',
              preco: '3,50',
              titulo: 'Tablete 52% org. 100g',
            ),
            ProdutoImagem(
              urlImagem: 'assets/tabletelacremeaoleite20g.png',
              preco: '3,00',
              titulo: 'Tablete 20g',
            ),
            ProdutoImagem(
              urlImagem: 'assets/tabletelanut100g.png',
              preco: '13,50',
              titulo: 'Tablete LaNut 100g',
            ),
            ProdutoImagem(
              urlImagem: 'assets/pacoca.png',
              preco: '10,00',
              titulo: 'Tablete 100g',
            ),
            ProdutoImagem(
              urlImagem: 'assets/tabletelacremeaoleite100g.png',
              preco: '13,00',
              titulo: 'Tablete LaCreme 100g',
            ),
            ProdutoImagem(
              urlImagem: 'assets/tabletedreamspetitgateau130g.png',
              preco: '15,00',
              titulo: 'Tablete Dreams 130g',
            ),
            ProdutoImagem(
              urlImagem: 'assets/miau70g.png',
              preco: '11,00',
              titulo: 'Miau ao Leite',
            ),
            SizedBox(height: 5,),
          ],
        ),
    );
  }
}
