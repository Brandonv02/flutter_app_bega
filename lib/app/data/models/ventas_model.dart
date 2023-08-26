

class VentasModel{
  final String idventa;
  final String ididentificacion;
  final String idproducto;
  final String fecha;
  final String factura;
  final String nombrecliente;
  final String correo;
  final String? telefono;
  final String? direccion;
  final String tipopago;

  VentasModel({
    required this.idventa,
    required this.ididentificacion,
    required this.idproducto,
    required this.fecha,
    required this.factura,
    required this.nombrecliente,
    required this.correo,
    this.telefono,
    this.direccion,
    required this.tipopago,

});

  static VentasModel fromJson(Map<String, dynamic>json) => VentasModel(
    idventa: json['idventa'],
    ididentificacion: json['ididentificacion'],
    idproducto: json['idproducto'],
    fecha: json['fecha'],
    factura: json['factura'],
    nombrecliente: json['nombrecliente'],
    correo: json['correo'],
    telefono: json['telefono'],
    direccion: json['direccion'],
    tipopago: json['tipopago'],
  );

  Map<String, dynamic> toJson() =><String, dynamic>{
    'idventa': idventa,
    'ididentificacion': ididentificacion,
    'idproducto': idproducto,
    'fecha': fecha,
    'factura': factura,
    'nombrecliente': nombrecliente,
    'correo': correo,
    'telefono': telefono,
    'direccion': direccion,
    'tipopago': tipopago,

  };
}