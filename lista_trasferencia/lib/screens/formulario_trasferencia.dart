import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FormularioTrasferencia extends StatelessWidget {
  const FormularioTrasferencia({super.key});

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
                style: const TextStyle(fontSize: 16),
                decoration: const InputDecoration(
                  labelText: "Numero da conta",
                  hintText: "0000"
                ),
                keyboardType: TextInputType.number,
              ),
              TextFormField(
                 style: const TextStyle(fontSize: 16),
                decoration: const InputDecoration(
                  icon: Icon(Icons.monetization_on),
                  labelText: "Valor",
                  hintText: "0.00"
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: ElevatedButton(onPressed: (){}, child: Text("Confirmar")),
              )
            ],
          ),
        ),
      ),
    );
  }
}