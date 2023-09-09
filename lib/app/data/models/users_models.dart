

class UsersModel{
  final String documento;
  final String nombre;
  final String apellido;
  final DateTime? birth_date;
  final String? celular;
  final String id_rol;

  UsersModel({
    required this.documento,
    required this.nombre,
    required this.apellido,
    this.birth_date,
    this.celular,
    required this.id_rol,
  });

  static ClientesModel fromJson(Map<String, dynamic>json) => ClientesModel(
      documento: json['documento'],
      nombrecliente: json['nombrecliente'],
      direccion: json['direccion'],
      celular: json['celular'],
      correo: json['correo'],
      password: json['password']
  );

  Map<String, dynamic> toJson() =><String, dynamic>{
    'documento': documento,
    'nombre': nombrecliente,
    'direccion': direccion,
    'celular': celular,
    'correo': correo,
    'password': password

  };
}