

class ProductosModel{
  final String idproducto;
  final String codigoproducto;
  final String? descripcion;
  final String? tipoproducto;
  final String? valor;

  ProductosModel({
    required this.idproducto,
    required this.codigoproducto,
    this.descripcion,
    this.tipoproducto,
    this.valor,
});

  static ProductosModel fromJson(Map<String, dynamic>json) => ProductosModel(
    idproducto: json['idproducto'],
    codigoproducto: json['codigoproducto'],
    descripcion: json['descripcion'],
    tipoproducto: json['tipoproducto'],
    valor: json['valor'],
  );

  Map<String, dynamic> toJson() =><String, dynamic>{
    'idproducto': idproducto,
    'codigoproducto': codigoproducto,
    'descripcion': descripcion,
    'tipoproducto': tipoproducto,
    'valor': valor,

  };
}