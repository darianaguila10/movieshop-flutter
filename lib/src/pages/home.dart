import 'package:flutter/material.dart';
import 'package:movieshop/src/peliculas.dart';
import 'package:movieshop/src/widgets/card_swiper_widget.dart';
import 'package:movieshop/src/widgets/movie_horizontal.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MovieShop"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {})
        ],
      ),
      body: Container(
        color: Colors.black87,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[_swipertarjetas(), _footer(context)],
        ),
      ),
    );
  }

  Widget _swipertarjetas() {
    return CardSwiper(peliculas: getPeliculas2());
  }

  Widget _footer(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "Populares",
              style: TextStyle(color: Colors.white70),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          MovieHorizontal(peliculas: getPeliculas())
        ],
      ),
    );
  }
}
