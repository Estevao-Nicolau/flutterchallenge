import 'package:dio/dio.dart';

import '../model/produtos.dart';

class ProdutosController {
  static Future<List<Products>> getProdutos() async {
    var productsList = <Products>[];
    var dio = Dio();
    final res = await dio.get('aqui vai a API');
    // pegar uma lista no Json e tranforma em lista de Objto.
    productsList =
        List.from(res.data).map((e) => Products.fromJson(e)).toList();
    return productsList;
  }
}
