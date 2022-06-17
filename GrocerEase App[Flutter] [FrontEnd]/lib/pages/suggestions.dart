import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../products.dart';
import 'fruitpage.dart';

class Suggestions extends StatefulWidget {
  const Suggestions({Key? key}) : super(key: key);

  @override
  _SuggestionsState createState() => _SuggestionsState();
}

class _SuggestionsState extends State<Suggestions> {
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







  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listing Users"),
      ),
      body: getBody(),
    );
  }

  void getproducts() async {
    int z=0;
    int y=0;
    bool first=true;
    bool sec=true;
    late String cat1;
    late String cat2;
    String url="http://192.168.55.94:5000/?query=select * from products where SUBSTRING_INDEX(Category,',',-1) in (select distinct SUBSTRING_INDEX(Category,',',-1) from favorite_products )order by price desc";
    var response = await http.get(Uri.parse(url));
    var data = jsonDecode(response.body);
    for (var pro in data["result"]) {

      Product produ = new Product.fromJson(pro);
      if(first==true){
        first=false;
        products.add(produ);
        final str=produ.Category.split(',');
        cat1=str[1];
      }
      else if(!produ.Category.contains(cat1) && sec){
        sec=false;
        final str=produ.Category.split(',');
        cat2=str[1];

      }
      else if(produ.Category.contains(cat1) && z<1){
        z++;
        setState(() {
          products.add(produ);
        });
      }
      else if(produ.Category.contains(cat2) && y<2){
        y++;
        setState(() {
          products.add(produ);
        });
      }

      // print(products[0]);
      print("products ends");
    }








  }
}
