class Pelicula {
  String uniqueId;
  int id;
  String title;
  String description;
  String imagepath;
  String backgroundpath;

  Pelicula(this.id, this.title, this.description, this.imagepath,
      this.backgroundpath);

  Pelicula.fromJsonMap(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    imagepath = json['imagepath'];
    backgroundpath = json['backgroundpath'];
  }
}
