import 'package:flutter/material.dart';
import 'package:movieshop/src/models/paliculas.dart';

class PeliculaDetalle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Pelicula pelicula = ModalRoute.of(context).settings.arguments;
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        _crearAppbar(context, pelicula),
        SliverList(
            delegate: SliverChildListDelegate([
          SizedBox(
            height: 10.0,
          ),
          _posterTitulo(context, pelicula),
          _description(pelicula),
        ]))
      ],
    ));
  }

  Widget _crearAppbar(BuildContext context, Pelicula p) {
    return SliverAppBar(
      elevation: 2.0,
      backgroundColor: Theme.of(context).primaryColor,
      expandedHeight: 200.0,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text(
          p.title,
          style: TextStyle(fontSize: 16.0),
        ),
        background: FadeInImage(
          image: AssetImage("assets/img/" + p.backgroundpath),
          placeholder: AssetImage('assets/img/loading.gif'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _posterTitulo(BuildContext context, Pelicula pelicula) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: <Widget>[
          Hero(
            tag: pelicula.uniqueId,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image(
                image: AssetImage("assets/img/" + pelicula.imagepath),
                height: 160.0,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
          Container(
              height: 160,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    pelicula.title,
                    style: Theme.of(context).textTheme.title,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.calendar_today,
                        size: 18,
                      ),
                      Text(" 12/4/2020"),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.movie_filter,
                        size: 18,
                      ),
                      Text(" Animado"),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.timer,
                        size: 18,
                      ),
                      Text(' 1h 29m')
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.star_border, size: 18),
                      Text(' 40')
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }

  Widget _description(Pelicula pelicula) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: Text(pelicula.description, textAlign: TextAlign.justify),
    );
  }
}
