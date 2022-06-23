// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:infraero/pages/tab_view_page.dart';

class SearchBarPage extends StatelessWidget {
  static List<String> searchTerms = [
    "Aeroporto Internacional de Rio Branco",
    "Aeroporto Internacional de Maceió",
    "Aeroporto Internacional de Macapá",
    "Aeroporto Internacional de Rio Grande Sul",
    "Aeroporto Internacional de Palmas",
    "Aeroporto Internacional de Guarulhos",
    "Aeroporto Internacional de Rio de Janeiro"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('INFRAERO'),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: CustomSearchDelegate(),
              );
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: SizedBox(
        child: ListView.builder(
            itemCount: searchTerms.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 8,
                shadowColor: Colors.grey,
                child: ListTile(
                  leading: const Icon(Icons.airplanemode_active),
                  title: Text(searchTerms[index]),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => TabViewPage()));
                  },
                ),
              );
            }),
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in SearchBarPage.searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Center(child: Text(result)),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in SearchBarPage.searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Center(child: Text(result)),
        );
      },
    );
  }
}
