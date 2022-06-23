import 'package:flutter/material.dart';
import 'package:infraero/pages/tab_chegadas_page.dart';
import 'package:infraero/pages/tab_partidas_page.dart';

class TabViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("INFRAERO"),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(text: "Chegada"),
              Tab(text: "Partida"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SizedBox(child: TabChegadasPage()),
            SizedBox(child: TabPartidasPage()),
          ],
        ),
      ),
    );
  }
}
