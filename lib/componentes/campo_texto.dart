import 'package:flutter/material.dart';

class CampoTexto extends StatelessWidget {
  final TextEditingController controlador;
  final String texto;
  final String dica;
  final IconData icone;

  CampoTexto({this.controlador, this.texto, this.dica, this.icone});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
      child: TextField(
        controller: controlador,
        style: TextStyle(fontSize: 24.0),
        decoration: InputDecoration(
            icon: icone != null ? Icon(icone) : null,
            labelText: texto,
            hintText: dica),
        keyboardType: TextInputType.number,
      ),
    );
  }
}