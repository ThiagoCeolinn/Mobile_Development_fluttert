import 'package:flutter/material.dart';
import 'package:magazine/model/product.dart';
import 'package:magazine/products/products.dart';

class Home extends StatefulWidget {
  @override
  createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          leading: Image.asset("assets/images/logo.jpg"),
          title: Text("Ofertas do dia"),
          backgroundColor: Colors.lightBlue.shade600,
        ),
        body: Column(
          children: [
            Container(
              child: Image.asset(
                "assets/images/linha.jpg",
                fit: BoxFit.fitWidth,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemBuilder: builder, itemCount: listOfProducts.length),
            )
          ],
        ),
      ),
    );
  }

  Widget builder(BuildContext _, int index) {
    Product _product = listOfProducts.elementAt(index);
    return ListTile(
      title: Row(
        children: [
          Image.asset(
            _product.foto,
            width: 90,
            height: 100,
          ),
          SizedBox(
            width: 14,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 12,
              ),
              Text(_product.nome,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 5,
              ),
              Text(
                _product.descricao,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 12,
              ),
              Text("R\$ ${_product.preco}",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue.shade800,
                  )),
              Row(
                children: [
                  Text(
                    "10x de ${_product.parcelamento}, sem juros",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.blueAccent.shade400),
                  ),
                  IconButton(
                    icon: Icon(
                      (_product.isFavorite)
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: (_product.isFavorite) ? Colors.red : Colors.red,
                      size: 20,
                    ),
                    onPressed: () {
                      setState(() {
                        _product.isFavorite = !_product.isFavorite;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
