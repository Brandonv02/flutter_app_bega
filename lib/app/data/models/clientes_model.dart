

class ClientesModel{
  final String documento;
  final String nombrecliente;
  final String? direccion;
  final String? celular;
  final String? correo;
  final String password;

  ClientesModel({
    required this.documento,
    required this.nombrecliente,
    this.direccion,
    this.celular,
    this.correo,
    required this.password
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