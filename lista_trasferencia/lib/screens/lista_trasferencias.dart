import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../auxiliadores/auxi.dart';
import '../screens/item_trasferencia.dart';



class ListaTrasferencia extends StatelessWidget {
  const ListaTrasferencia({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children:  [
          ItemTransferencia(Trasferencia(100, 200)),
          ItemTransferencia(Trasferencia(200, 5000)),
        ],
      );
  }
}