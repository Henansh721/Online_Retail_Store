import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../products.dart';
import 'fruitpage.dart';

const primary = Color(0xff4f359b);
class ListViewProducts extends StatefulWidget {
  String Query;
  ListViewProducts({Key? key,required this.Query}) : super(key: key);

  @override
  _ListViewProductsState createState() => _ListViewProductsState();
}

class _ListViewProductsState extends State<ListViewProducts> {
  List products=[];
  void initState() {
    getproducts();
    // uploadfile();
    super.initState();
  }
  Widget getBody() {
    if(products.contains(null) || products.length < 0){
      return Center(child: CircularProgressIndicator(valueColor: new AlwaysStoppedAnimation<Color>(Colors.teal),));
    }else{
      return ListView.builder(
          itemCount: products.length,
          itemBuilder: (context,index)
          {
            return getCard(products[index]);
          });
    }

  }

  Widget getCard(Product p) {

    return TextButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>FruitPage(p:p)));
      },
      child: Container(

        decoration: BoxDecoration(
          color: Colors.teal,

        ),
        padding: EdgeInsets.all(10,),
        margin: EdgeInsets.all(10,),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10,),
              margin: EdgeInsets.all(10,),
              decoration: BoxDecoration(
                // color: primary,
                  borderRadius: BorderRadius.circular(60/2),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(p.image),
                  )

              ),
            ),
            SizedBox(width: 10,),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text(p.pname,style: TextStyle(color: Colors.black),),
                  ),
                  Container(
                    child: Text(p.Category,style: TextStyle(color: Colors.black)),
                  ),
                ],
              ),
            ),
            SizedBox(width: 30,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text("price Rs"+p.price.toString(),style: TextStyle(color: Colors.black)),
                ),
                Container(
                  child: Text("Quantity "+p.Available_Q.toString(),style: TextStyle(color: Colors.black)),
                ),
              ],
            ),




          ],
        ),
      ),
    );


  }


  Future getproducts() async {
    print("products starts");
    String Url = "http://192.168.55.94:5000/?query=" + widget.Query;
    var response = await http.get(Uri.parse(Url));
    var data = jsonDecode(response.body);
    // print(data);
    // setState(() {
    //       products.add(new Product(id: data["result"], pname: pname, Available_Q: Available_Q, price: price, pdescription: pdescription, Category: Category, EXP: EXP, image: image, Discount: Discount));
    //     });
    for (var pro in data["result"]) {
      print(pro);
      Product produ = new Product.fromJson(pro);
      setState(() {
        products.add(produ);
      });
      //
      // }


      // print(products[0]);
      print("products ends");
    }


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listing Users"),
      ),
      body: getBody(),
    );

  }



}
