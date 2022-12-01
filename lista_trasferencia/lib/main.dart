import 'package:flutter/material.dart';
import 'package:lista_trasferencia/screens/formulario_trasferencia.dart';
import 'package:lista_trasferencia/screens/primeira_tela.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: FormularioTrasferencia()
    );
  }
}



