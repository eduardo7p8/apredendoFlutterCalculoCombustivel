import 'package:aula02_pos_block/ui/ios/widgets/campo_texto.dart';
import 'package:flutter/cupertino.dart';

import '../../blocs/calc_combustivel_bloc.dart';
import '../../constantes.dart';
import '../ios/widgets/botao_quadrado.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    final calcBloc = CalculoCombustivelBloc(context);
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(middle: Text(tituloApp)),
        child: SingleChildScrollView(
            child: SafeArea(
          child: Column(
            children: [
              CampoTexto(
                  controlador: calcBloc.nomeController,
                  texto: 'Nome',
                  teclado: TextInputType.text),
              CampoTexto(controlador: calcBloc.cpfController, texto: 'CPF'),
              CampoTexto(
                controlador: calcBloc.etanolController,
                texto: 'Etanol',
              ),
              CampoTexto(
                controlador: calcBloc.gasolinaController,
                texto: 'Gasolina',
              ),
              BotaoQuadrado(texto: 'Calcular', clique: calcBloc.calcular),
            ],
          ),
        )));
  }
}
