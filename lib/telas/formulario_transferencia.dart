import 'package:bytebank/componentes/campo_texto.dart';
import 'package:bytebank/constants.dart';
import 'package:bytebank/modelos/transferencia.dart';
import 'package:flutter/material.dart';

class FromularioTransferencia extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FromularioTransferenciaState();
  }

}

class FromularioTransferenciaState extends State<FromularioTransferencia>{

  final TextEditingController _controladorCampoNumeroConta =   TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(Constantes().tituloTelaCadastroTransferencia)),
      body: Builder( builder: (context) => SingleChildScrollView( child: Column(
        children: [
          CampoTexto(
              controlador: _controladorCampoNumeroConta,
              texto: Constantes().rotuloCampoNumeroConta,
              dica: Constantes().dicaCampoNumeroConta),
          CampoTexto(
              controlador: _controladorCampoValor,
              texto: Constantes().rotuloCampoValor,
              dica: Constantes().dicaCampoValor,
              icone: Icons.attach_money),
          RaisedButton(
              onPressed: () => _criaTransferencia(context),
              child: Text('Confirmar'))
        ],
      ))),
    );
  }

  void _criaTransferencia(BuildContext context) {
    final int numeroConta = int.tryParse(_controladorCampoNumeroConta.text);
    final double valor = double.tryParse(_controladorCampoValor.text);
    if (numeroConta != null && valor != null) {
      final transferenciaCriada = Transferencia(numeroConta, valor);
      Scaffold.of(context)
          .showSnackBar(SnackBar(content: Text('$transferenciaCriada')));
      Navigator.pop(context, transferenciaCriada);
    }
  }
}