import 'package:flutter/material.dart';
import 'package:movieshop/src/pages/home.dart';
import 'package:movieshop/src/pages/pelicula_detalle.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MovieShop',
      theme: ThemeData(
        // is not restarted.
        primaryColor: Colors.red,
      ),
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => HomePage(),
        'detalle': (BuildContext context) => PeliculaDetalle(),
      },
    );
  }
}
