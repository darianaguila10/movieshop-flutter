import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movieshop/src/pages/home.dart';
import 'package:movieshop/src/pages/pelicula_detalle.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
       SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return MaterialApp(
      title: 'MovieShop',
      theme: ThemeData(
        // is not restarted.
        primaryColor: Color(0xFF353552),
      ),
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => HomePage(),
        'detalle': (BuildContext context) => PeliculaDetalle(),
      },
    );
  }
}
