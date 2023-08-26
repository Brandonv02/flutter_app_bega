

class UsersModel {
  final String identificacion;
  final String nombre;
  final String correo;
  final String? telefono;
  final String? direccion;
  final String password;

  UsersModel({
    required this.identificacion,
    required this.nombre,
    required this.correo,
    this.telefono,
    this.direccion,
    required this.password,
  });

  static UsersModel fromJson(Map<String, dynamic> json) => UsersModel(
      identificacion: json['identificacion'],
      nombre: json['nombre'],
      correo: json['correo'],
      telefono: json['telefono'],
      direccion: json['direccion'],
      password: json['password']
  );

  Map<String,dynamic>toJson()=><String,dynamic>{
    'identificacion':identificacion,
    'nombre':nombre,
    'correo':correo,
    'telefono':telefono,
    'direccion':direccion,
    'password':password,
  };

}