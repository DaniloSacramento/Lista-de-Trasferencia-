import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../auxiliadores/auxi.dart';
import '../screens/item_trasferencia.dart';
import 'formulario_trasferencia.dart';



class ListaTrasferencia extends StatefulWidget {
  
   ListaTrasferencia({super.key});
  final List<Trasferencia> trasferenciass = [];
  @override
  State<ListaTrasferencia> createState() => _ListaTrasferenciaState();
}

class _ListaTrasferenciaState extends State<ListaTrasferencia> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: widget.trasferenciass.length,
          itemBuilder: (context, indice){
         final trasferenciaa =    widget.trasferenciass[indice];
            return ItemTransferencia(trasferenciaa); 
          },
        ),
         floatingActionButton: FloatingActionButton(
        onPressed: () {
        final Future <Trasferencia?> future =   Navigator.push(context, MaterialPageRoute(builder: (context){
            return FormularioTrasferencia();
          }));
          future.then( (trasferenciaRecebida){
            print("Chegou no the do future");
            print("$trasferenciaRecebida");

            if(trasferenciaRecebida != null){
              widget.trasferenciass.add(trasferenciaRecebida);
            }
            widget.trasferenciass.add(trasferenciaRecebida!);
          });
        },
        child:  Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
    );
  }
}