import 'package:flutter/material.dart';
import 'package:infraero/pages/info_voos_page.dart';

class TabPartidasPage extends StatelessWidget {
  static List<String> listaChegada = [
    "Palmas",
    "São Paulo",
    "Brasília",
    "Salvador",
    "Fortaleza",
    "Belo Horizonte",
    "Manaus",
    "Curitiba",
    "Recife",
    "Goiânia",
    "Belém",
    "Porto Alegre",
    "Guarulhos",
    "Campinas",
    "São Luís",
    "São Gonçalo",
    "Maceió",
  ];

  static List<String> listaPartida = [
    "Maceió",
    "São Gonçalo",
    "São Luís",
    "Campinas",
    "Guarulhos",
    "Porto Alegre",
    "Belém",
    "Goiânia",
    "Recife",
    "Curitiba",
    "Manaus",
    "Belo Horizonte",
    "Fortaleza",
    "Salvador",
    "Brasília",
    "São Paulo",
    "Palmas",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: TabPartidasPage.listaChegada.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 8,
          shadowColor: Colors.grey,
          child: ListTile(
            leading: const Icon(Icons.airplane_ticket_outlined),
            title: Text(listaChegada[index].toString()),
            subtitle: Text("Destino: " + listaPartida[index].toString()),
            trailing: const Icon(Icons.timer),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => InfoVoosPage()));
            },
          ),
        );
      },
    );
  }
}
