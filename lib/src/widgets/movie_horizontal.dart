import 'package:flutter/material.dart';
import 'package:movieshop/src/models/paliculas.dart';

class MovieHorizontal extends StatelessWidget {
  final List<Pelicula> peliculas;
  const MovieHorizontal({@required this.peliculas});

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Container(
        height: _screenSize.height * 0.25,
        child: PageView(
          pageSnapping: false,
          controller: PageController(initialPage: 1, viewportFraction: 0.3,),
          children: _tarjetas(context),
        ));
  }

  List<Widget> _tarjetas(BuildContext context) {
    return peliculas.map((i) {
      i.uniqueId = '${ i.id }-poster';
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, 'detalle', arguments: i);
        },
    
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          child: Column(
            children: <Widget>[
              Hero(
                tag: i.uniqueId,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: FadeInImage(
                    image: AssetImage("assets/img/" + i.imagepath),
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
                i.title,
                style: TextStyle(color: Colors.white70),
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
        ),
      );
    }).toList();
  }
}
