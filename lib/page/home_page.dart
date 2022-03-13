import 'package:flutter/material.dart';
import 'package:flutterchallenge/card_view.dart';
import 'package:flutterchallenge/controller/produto_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bora Bora'),
        ),
        body: FutureBuilder(
            future: ProdutosController.getProdutos(),
            builder: (context, snapshot) {
              return Container();
            }));
  }
}
