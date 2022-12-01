import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import 'lista_trasferencias.dart';

class PrimeiraTela extends StatelessWidget {
  const PrimeiraTela({super.key});

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
      body: const ListaTrasferencia(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
    );
  }
}
