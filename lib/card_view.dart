import 'package:flutter/material.dart';
import 'package:flutterchallenge/model/produtos.dart';

class CardView extends StatefulWidget {
  const CardView({Key? key, this.produto}) : super(key: key);

  final Produto? produto;

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  bool checkValue = false;
  List items = getDummyList();
  TextEditingController _nomeController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nomeController.text = widget.produto != null ? widget.produto!.nome : '';
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 5,
          child: Container(
            height: 100.0,
            child: Row(
              children: <Widget>[
                Container(
                  height: 100.0,
                  width: 150.0,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      topLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                      topRight: Radius.circular(5),
                    ),
                    image: DecorationImage(
                      image: AssetImage('assets/images/0.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 2, 0, 0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(items[index]),
                              Text('Type')
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text('Descrição do produto'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () => print('menu: '),
                        child: SizedBox(
                          child: Icon(
                            Icons.menu_rounded,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                          ),
                          Text("RS 10")
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

List getDummyList() {
  List list = List.generate(10, (i) {
    return "Produto ${i + 1}";
  });
  return list;
}
