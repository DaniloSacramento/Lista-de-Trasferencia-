import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lista_trasferencia/auxiliadores/auxi.dart';

class FormularioTrasferencia extends StatelessWidget {
   FormularioTrasferencia({super.key});

  final TextEditingController _controladorCampoNumeroConta = TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Criando trasferência"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                controller: _controladorCampoNumeroConta,
                style: const TextStyle(fontSize: 16),
                decoration: const InputDecoration(
                  labelText: "Numero da conta",
                  hintText: "0000"
                ),
                keyboardType: TextInputType.number,
              ),
              TextFormField(
                controller: _controladorCampoValor,
                 style: const TextStyle(fontSize: 16),
                decoration: const InputDecoration(
                  icon: Icon(Icons.monetization_on),
                  labelText: "Valor",
                  hintText: "0.00"
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: ElevatedButton(onPressed: (){
                  _criaTransferencia(context);  
                }, child: Text("Confirmar")),
              )
            ],
          ),
        ),
      ),
    );
  }
  void _criaTransferencia(BuildContext context){
    final int? valorConta = int.tryParse(_controladorCampoNumeroConta.text);
                  final double? valor = double.tryParse(_controladorCampoValor.text);
                  if(valorConta != null && valor != null){
                   final trasferenciaCriada = Trasferencia(valor, valorConta);
                   print("$trasferenciaCriada");
                   Navigator.pop(context, trasferenciaCriada);
      }
  }
}