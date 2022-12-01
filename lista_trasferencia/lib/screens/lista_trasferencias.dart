import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListaTrasferencia extends StatelessWidget {
  const ListaTrasferencia({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: const [
          Card(
            child:  ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text("100.00"),
              subtitle: Text("100.00"),
            ),
          ),
        ],
      );
  }
}