import 'package:flutter/material.dart';
import 'package:flutter_app_helio/comum/enums/AppRouteEnum.dart';

class DrawerApp extends StatelessWidget {
  //método - define, repete, parâmetro (não tem, diferentes)
  Widget criarBotao(BuildContext context, String rotulo, AppRoute rota) {
    return ElevatedButton(
      child: Text(rotulo),
      onPressed: () {
        Navigator.of(context).pushNamed(rota.name);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Widgets')),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // criarBotao(context, 'Cadastro de estado', AppRoute.estado),
            // const SizedBox(height: 10),
            // criarBotao(context, 'Cadastro de cidade', AppRoute.cidade),
            // const SizedBox(height: 10),
            // criarBotao(context, 'Cadastro de pessoa', AppRoute.pessoa),
            // const SizedBox(height: 10),
            // criarBotao(context, 'Cadastro de produto', AppRoute.produto),
            // const SizedBox(height: 10),
            // criarBotao(context, 'Cadastro de categoria', AppRoute.categoria),
            // const SizedBox(height: 10),
            // criarBotao(context, 'Lista de Pessoas', AppRoute.listaPessoa),
            // const SizedBox(height: 10),
            // criarBotao(context, 'Lista de Cidades', AppRoute.listaCidade),
            const SizedBox(height: 20),
            criarBotao(context, 'Lista de Simulados', AppRoute.listaSimulados),
            const SizedBox(height: 20),
            criarBotao(
              context,
              'Formulário das questões',
              AppRoute.formularioQuestao,
            ),
            const SizedBox(height: 20),
            criarBotao(
              context,
              'Formulário do smilado',
              AppRoute.formularioSimulado,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
