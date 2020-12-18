import 'package:bytebank/componentes/item_transferencia.dart';
import 'package:bytebank/modelos/transferencia.dart';
import 'package:bytebank/telas/formulario_transferencia.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class ListaTranferencias extends StatefulWidget {
  final List<Transferencia> _transferencias = List();

  @override
  State<StatefulWidget> createState() {
    return ListaTranferenciasState();
  }

}

class ListaTranferenciasState extends State<ListaTranferencias>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: widget._transferencias.length,
        itemBuilder: (context,indice){
          final transferencia = widget._transferencias[indice];
          return ItemTransferencia(transferencia);
        },
      ),
      appBar: AppBar(title: Text(Constantes().tituloTelaPrincipal)),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            final Future future = Navigator.pushNamed(context, '/FormularioTransferencia');
            /*final Future<Transferencia> future =
            Navigator.push(context, MaterialPageRoute(builder: (context) { Quando não utilizamos rotas, é assim que devemos chamar a tela.
              return FromularioTransferencia();
            }));*/
            future.then((transferenciaRecebida) {
              atualizalista(transferenciaRecebida);
            });
          }),
    );
  }

  void atualizalista(Transferencia transferenciaRecebida){
    if(transferenciaRecebida != null){
      setState((){
        widget._transferencias.add(transferenciaRecebida);
      });
    }
  }
}