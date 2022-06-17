import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:untitled1/orders.dart';
import 'package:untitled1/pages/fruitpage.dart';
import 'package:untitled1/products.dart';

class ProductPool extends StatefulWidget {
  String Query;
  orders or;
  ProductPool({Key? key,required this.Query,required this.or}) : super(key: key);
  @override
  _ProductPoolState createState() => _ProductPoolState();
}

class _ProductPoolState extends State<ProductPool> {
  List products = [];


  void initState() {
    getProducts();
    super.initState();
  }

  void getProducts() async {
    String Url = "http://192.168.55.94:5000/?query=" + widget.Query;
    var response = await http.get(Uri.parse(Url));
    var data = jsonDecode(response.body);
    String newquery="http://192.168.55.94:5000/?query=Select * from products where id in (";
    for(var pro in data["result"]){
       newquery+=pro[0].toString()+',';
    }
    String result = newquery.substring(0,newquery.length-1);
    result+=")";
    print(result);
    var response1 = await http.get(Uri.parse(result));
    var data1 = jsonDecode(response1.body);

    for(var pro in data1["result"]) {
      print(pro);
      Product produ = new Product.fromJson(pro);
      setState(() {
        products.add(produ);
      });
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

  Widget getBody() {
    if(products.contains(null) || products.length < 0){
      return Center(child: CircularProgressIndicator(valueColor: new AlwaysStoppedAnimation<Color>(Colors.teal),));
    }else{
      return Column(
        children:<Widget>[
          TextButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child: Container(
              child:Text("Repeat Order",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
            ),
          ),
          Container(
               child: Text("Transaction id: "+widget.or.id.toString(),style:TextStyle(color: Colors.black,fontSize: 20) ,),
          ),
          Container(
             child: Text(widget.or.Pmode,style: TextStyle(color: Colors.black,fontSize: 20) ),
          ),
            Container(
               child: Text(widget.or.dt,style: TextStyle(color: Colors.black,fontSize: 20) ),
           ),
          Container(
            child: Text("price Rs"+widget.or.amount.toString(),style: TextStyle(color: Colors.black,fontSize: 20) ),
          ),
          Container(
            child: Text("Quantity "+widget.or.Qty.toString(),style: TextStyle(color: Colors.black,fontSize: 20) ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Text("List of Product you buy",style:TextStyle(color: Colors.purpleAccent,fontSize: 25) ),
          ),
          Container(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
              itemCount: products.length,
              itemBuilder: (context,index)
              {
                return getCard(products[index]);
              }),
          ),
     ]);
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



}


