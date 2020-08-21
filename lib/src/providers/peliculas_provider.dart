/* import 'dart:convert';
import 'dart:async';

import 'package:movieshop/src/models/paliculas.dart';

class PeliculasProvider {
  List<Pelicula> _populares = new List();

  final _popularesStreamController =
      StreamController<List<Pelicula>>.broadcast();

  Function(List<Pelicula>) get popularesSink =>
      _popularesStreamController.sink.add;

  Stream<List<Pelicula>> get popularesStream =>
      _popularesStreamController.stream;

  void disposeStreams() {
    _popularesStreamController?.close();
  }

  Future<List<Pelicula>> getEnCines() async {
    return [
      new Pelicula(1, "title", "", "2.jpg"),
      new Pelicula(2, "title", "", "3.jpg"),
      new Pelicula(3, "title", "", "4.jpg"),
      new Pelicula(4, "title", "", "1.jpg"),
      new Pelicula(5, "title", "", "7.jpg"),
      new Pelicula(6, "title", "", "2.jpg"),
      new Pelicula(7, "title", "", "3.jpg"),
      new Pelicula(8, "title", "", "4.jpg"),
      new Pelicula(9, "title", "", "1.jpg"),
      new Pelicula(10, "title", "", "7.jpg"),
    ];
  }

  Future<List<Pelicula>> getPopulares() async {
    List<Pelicula> list = [
      new Pelicula(1, "title", "", "2.jpg"),
      new Pelicula(2, "title", "", "3.jpg"),
      new Pelicula(3, "title", "", "4.jpg"),
      new Pelicula(4, "title", "", "1.jpg"),
      new Pelicula(5, "title", "", "7.jpg"),
      new Pelicula(6, "title", "", "2.jpg"),
      new Pelicula(7, "title", "", "3.jpg"),
      new Pelicula(8, "title", "", "4.jpg"),
      new Pelicula(9, "title", "", "1.jpg"),
      new Pelicula(10, "title", "", "7.jpg"),
    ];
    _populares.addAll(list);
    popularesSink(list);

    return list;
  }

  Future<List<Pelicula>> buscarPelicula(String query) async {
    return [
     new Pelicula(6, "title", "", "2.jpg"),
      new Pelicula(7, "title", "", "3.jpg"),
      new Pelicula(8, "title", "", "4.jpg"),
      new Pelicula(9, "title", "", "1.jpg"),
      new Pelicula(10, "title", "", "7.jpg"),
    ];
  }
}
 */