
class PedidosModel {
  final String idPedido;
  final String idVenta;
  final String direccionEntrega;
  final String nombreRecibe;
  final String telContacto;
  final String idDomiciliario;

  PedidosModel({
    required this.idPedido,
    required this.idVenta,
    required this.direccionEntrega,
    required this.nombreRecibe,
    required this.telContacto,
    required this.idDomiciliario
  });

  static PedidosModel fromJson(Map<String, dynamic> json) => PedidosModel(
      idPedido: json['idPedido'],
      idVenta: json['idVenta'],
      direccionEntrega: json['direccionEntrega'],
      nombreRecibe: json['nombreRecibe'],
      telContacto: json['telContacto'],
      idDomiciliario: json['idDomiciliario'],
  );

  Map<String,dynamic>toJson()=><String,dynamic>{
    'idPedido':idPedido,
    'idVenta':idVenta,
    'direccionEntrega':direccionEntrega,
    'nombreRecibe':nombreRecibe,
    'telContacto':telContacto,
    'idDomiciliario':idDomiciliario
  };

}