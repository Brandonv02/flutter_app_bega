

class PagoModel {
  final String idPago;
  final String idVenta;
  final String idMetodoPago;

  PagoModel({
    required this.idPago,
    required this.idVenta,
    required this.idMetodoPago
  });

  static PagoModel fromJson(Map<String, dynamic> json) => PagoModel(
      idPago: json['idPago'],
      idVenta: json['idPago'],
      idMetodoPago: json['idMetodoPago']
  );

  Map<String,dynamic>toJson()=><String,dynamic>{
    'idPago':idPago,
    'idVenta':idVenta,
    'idMetodoPago':idMetodoPago,
  };

}