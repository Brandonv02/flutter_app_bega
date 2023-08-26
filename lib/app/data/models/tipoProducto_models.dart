

class TipoProductoModel {
  final String idTipoProducto;
  final String nombreTipoProducto;

  TipoProductoModel({
    required this.idTipoProducto,
    required this.nombreTipoProducto
  });

  static TipoProductoModel fromJson(Map<String, dynamic> json) => TipoProductoModel(
      idTipoProducto: json['idTipoProducto'],
      nombreTipoProducto: json['nombreTipoProducto']
  );

  Map<String,dynamic>toJson()=><String,dynamic>{
    'idTipoProducto':idTipoProducto,
    'nombreTipoProducto':nombreTipoProducto,
  };

}