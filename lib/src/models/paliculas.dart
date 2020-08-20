class Pelicula {
  String uniqueId;
  int id;
  String title;
  String subtitle;
  String description;
  String imagepath;
  String backgroundpath;

  Pelicula(this.id, this.title, this.subtitle, this.description, this.imagepath,
      this.backgroundpath);

  Pelicula.fromJsonMap(Map<String, dynamic> json) {
    title = json['title'];
    subtitle = json['subtitle'];
    description = json['description'];
    imagepath = json['imagepath'];
    backgroundpath = json['backgroundpath'];
  }
}
