
class ProductsModel {
  final String idProducto;
  final String codigoProducto;
  final String descripcionProducto;
  final String? tipoProducto;
  final String? valor;

  ProductsModel({
    required this.idProducto,
    required this.codigoProducto,
    required this.descripcionProducto,
    required this.tipoProducto,
    required this.valor
  });

  static ProductsModel fromJson(Map<String, dynamic> json) => ProductsModel(
      idProducto: json['idProducto'],
      codigoProducto: json['codigoProducto'],
      descripcionProducto: json['descripcionProducto'],
      tipoProducto: json['tipoProducto'],
      valor: json['valor']
  );

  Map<String,dynamic>toJson()=><String,dynamic>{
    'idProducto':idProducto,
    'codigoProducto':codigoProducto,
    'descripcionProducto':descripcionProducto,
    'tipoProducto':tipoProducto,
    'valor':valor
  };

}