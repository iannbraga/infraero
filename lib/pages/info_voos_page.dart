import 'package:flutter/material.dart';

class InfoVoosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detalhes do Voo"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: const <Widget>[
            ListTile(
              leading: Icon(Icons.airplane_ticket),
              title: Text("Origem: Palmas"),
              subtitle: Text("Destino: Aeroporto de Brasília"),
            ),
            ListTile(
              leading: Icon(Icons.connecting_airports),
              title: Text("Aeroporto"),
              subtitle: Text("Aeroporto de Brasília"),
            ),
            ListTile(
              leading: Icon(Icons.adjust_outlined),
              title: Text("CIA Aérea"),
              subtitle: Text("Azul"),
            ),
            ListTile(
              leading: Icon(Icons.connecting_airports),
              title: Text("Número do Vôo"),
              subtitle: Text("4210"),
            ),
            ListTile(
              leading: Icon(Icons.access_alarm),
              title: Text("20/10/2023"),
              subtitle: Text("Data"),
              trailing: Text("20:30\nHora"),
            ),
          ],
        ),
      ),
    );
  }
}
