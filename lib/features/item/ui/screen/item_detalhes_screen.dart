import 'package:flutter/material.dart';
import 'package:kommando/core/produto/models/produto.dart';
import 'package:kommando/features/item/ui/widgets/adicionar_mais_itens_widget.dart';
import 'package:kommando/features/item/ui/widgets/botao_pedir_widget.dart';
import 'package:kommando/features/item/ui/widgets/controle_quantidade_widget.dart';
import 'package:kommando/features/lobby/ui/widgets/produto_widget.dart';

class ItemDetalhesScreen extends StatelessWidget {
  final Produto produto;

  const ItemDetalhesScreen({Key key, this.produto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalhes do item"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(5)),
                ),
                ProdutoWidget(
                  produto: produto,
                ),
                Divider(
                  thickness: 1,
                ),
                ControleQuantidadeWidget(),
                AdicionarMaisItensWidget(),
                BotaoPedirWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}