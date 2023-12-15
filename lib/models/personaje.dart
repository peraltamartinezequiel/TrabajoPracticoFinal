class Personaje {
  String imagen;
  String? nombre;
  String? aka;
  String? nacionalidad;
  String? raza;
  String? sexo;
  String? primera_aparicion;
  String? ultima_aparicion;
  String? creado_por;
  Personaje(
      {required this.imagen,
      this.nombre,
      this.aka,
      this.nacionalidad,
      this.raza,
      this.sexo,
      this.primera_aparicion,
      this.ultima_aparicion,
      this.creado_por});
}
