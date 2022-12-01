import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:lista_trasferencia/auxiliadores/auxi.dart';


class ItemTransferencia extends StatelessWidget {
 

 
  final Trasferencia _trasferencia;
  const ItemTransferencia( this._trasferencia);
  

  @override
  Widget build(BuildContext context) {
    return  Card(
            child:  ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text(_trasferencia.valor.toString()),
              subtitle: Text(_trasferencia.valorConta.toString()),
            ),
          ) ;
  }
}