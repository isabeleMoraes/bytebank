import 'package:bytebank/telas/formulario_transferencia.dart';
import 'package:bytebank/telas/lista_transferencia.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = <String,WidgetBuilder>{
    '/': (context) => ListaTranferencias(),
    '/FormularioTransferencia': (context) => FromularioTransferencia()
  };