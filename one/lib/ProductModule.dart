import 'package:flutter/material.dart';

/**
 * 产品列表
 */
class ProductList extends StatefulWidget {
  final List<Product> products;
  ProductList({Key key, @required this.products}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return ProductListState(products);
  }
}

class Product {
  final String title;
  final String description;
  Product(this.title, this.description);
}

/**
 * 产品状态管理
 */
class ProductListState extends State<ProductList> {
  final List<Product> _products;
  ProductListState(this._products);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品列表"),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return ListTile(
          title: Text(_products[index].title),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              print( _products[index].title);
              return ProductDetail(product: _products[index]);
            }));
          },
        );
      }),
    );
  }
}

/**
 * 产品详情
 */
class ProductDetail extends StatelessWidget {
  var product;
  ProductDetail({Key key, @required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("产品详情${product.title}"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text("${product.description}"),
      ),
    );
  }
}
