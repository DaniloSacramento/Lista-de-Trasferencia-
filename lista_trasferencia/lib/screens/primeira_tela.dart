import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import '../auxiliadores/auxi.dart';
import 'formulario_trasferencia.dart';
import 'lista_trasferencias.dart';

class PrimeiraTela extends StatelessWidget {
   PrimeiraTela({super.key});
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Trasferências",
          style: TextStyle(),
        ),
        backgroundColor: Colors.green,
      ),
      body: ListaTrasferencia(),
     
    );
  }
}
