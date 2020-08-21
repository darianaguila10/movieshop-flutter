import 'package:flutter/material.dart';
import 'package:movieshop/src/peliculas.dart';
import 'package:movieshop/src/search/search_delegate.dart';

class PeliculasGridView extends StatelessWidget {
  final p = getPeliculas();

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xFF1E1E22),
      appBar: AppBar(shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(25),
      ),
    ),
        title: Text("Todas las Películas"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());
              }),
        ],
      ),
      body: Container(
        
        child: GridView.builder(
            itemCount: p.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height / 1.4),
            ),
            itemBuilder: (BuildContext context, int index) {
              p[index].uniqueId = '${p[index].id}-grid';

              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'detalle', arguments: p[index]);
                },
                child: Container(
                  padding: EdgeInsets.only(top: 8),
                  child: Column(
                    children: <Widget>[
                      Hero(
                        tag: p[index].uniqueId,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: FadeInImage(
                            image:
                                AssetImage("assets/img/" + p[index].imagepath),
                            placeholder: AssetImage('assets/img/no-image.jpg'),
                            fit: BoxFit.cover,
                            height: 160.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        p[index].title,
                        style: TextStyle(color: Colors.white70),
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
