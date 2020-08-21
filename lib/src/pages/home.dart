import 'package:flutter/material.dart';
import 'package:movieshop/src/peliculas.dart';
import 'package:movieshop/src/search/search_delegate.dart';
import 'package:movieshop/src/widgets/card_swiper_widget.dart';
import 'package:movieshop/src/widgets/movie_horizontal.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xFF1E1E22),
      appBar: AppBar( shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(25),
      ),
    ),
        title: Text("MovieShop"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.view_comfy), onPressed: () {
           Navigator.pushNamed(context, "gridview");
          }), IconButton(icon: Icon(Icons.search), onPressed: () {
            showSearch(context: context, delegate: DataSearch());
          }),
          
        ],
      ),
      body: Container(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[Expanded(child: _swipertarjetas(),), _footer(context)],
        ),
      ),
    );
  }

  Widget _swipertarjetas() {
    return CardSwiper(peliculas: getPeliculas());
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
