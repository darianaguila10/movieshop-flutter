import 'package:flutter/material.dart';
import 'package:movieshop/src/peliculas.dart';

class DataSearch extends SearchDelegate {
  final peliculas = getPeliculas();
  final peliculasRecientes = getPeliculasRecientes();

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = '';
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // Icono a la izquierda del AppBar
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return null;
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final listaSugerida = (query.isEmpty)
        ? peliculasRecientes
        : peliculas
            .where((p) => p.title.toLowerCase().contains(query.toLowerCase()))
            .toList();

    return ListView.builder(
        itemCount: listaSugerida.length,
        itemBuilder: (context, i) {
          return ListTile(
            leading: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
                          child: FadeInImage(
                image: AssetImage("assets/img/" + listaSugerida[i].imagepath),
                placeholder: AssetImage('assets/img/no-image.jpg'),
                width: 50.0,
                fit: BoxFit.contain,
              ),
            ),
            title: Text(listaSugerida[i].title),
            subtitle: Text(" " + listaSugerida[i].subtitle),
            onTap: () {
              listaSugerida[i].uniqueId = '';
              Navigator.pushNamed(context, 'detalle',
                  arguments: listaSugerida[i]);
            },
          );
        });
  }
}
