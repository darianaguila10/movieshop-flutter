import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:movieshop/src/models/paliculas.dart';

class CardSwiper extends StatelessWidget {
  final List<Pelicula> peliculas;

  const CardSwiper({@required this.peliculas});

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    final men = _screenSize.width * 0.65;
    final may = _screenSize.width * 0.7;

    return Container(
      padding: EdgeInsets.only(top: 15),
      child: new Swiper(
        layout: SwiperLayout.STACK,
        itemWidth: _screenSize.width<650? men:may,
        itemHeight: _screenSize.height * 0.5,
        itemBuilder: (BuildContext context, int index) {
          peliculas[index].uniqueId = '${peliculas[index].id}-tarjeta';
          return ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, 'detalle',
                  arguments: peliculas[index]),
              child: FadeInImage(
                image: AssetImage(
                  "assets/img/" + peliculas[index].imagepath,
                ),
                placeholder: AssetImage('assets/img/no-image.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          );
        },
        itemCount: peliculas.length,
      ),
    );
  }
}
