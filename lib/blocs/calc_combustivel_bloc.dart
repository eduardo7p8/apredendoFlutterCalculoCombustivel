import 'package:flutter/widgets.dart';

import '../ui/widgets/mensagem_alerta.dart';

class CalculoCombustivelBloc {
  final BuildContext contexto;
  final nomeController = TextEditingController();
  final cpfController = TextEditingController();
  final etanolController = TextEditingController();
  final gasolinaController = TextEditingController();

  CalculoCombustivelBloc(this.contexto);

  void calcular() {
    final valorEtanol = double.parse(etanolController.text);
    final valorGasolina = double.parse(gasolinaController.text);

    if (valorEtanol <= (valorGasolina * 0.7)) {
      //etanol melhor
      MensagemAlerta().show(
          context: contexto, texto: 'Etanol', titulo: 'Bebe mais, porem anda!!');
    } else {
      //gasolina melhor
      MensagemAlerta().show(
          context: contexto,
          texto: 'Gasolina',
          titulo: 'Bebe pouco, anda pouco!!');
    }
  }
}
