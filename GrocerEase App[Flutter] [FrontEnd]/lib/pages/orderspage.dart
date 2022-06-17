import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import '../orders.dart';
import '../productcard.dart';

class Orderspage extends StatefulWidget {
  const Orderspage({Key? key}) : super(key: key);

  @override
  _OrderspageState createState() => _OrderspageState();
}

class _OrderspageState extends State<Orderspage> {
  List allorders=[];
  void initState() {
    getOrders();
    super.initState();
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

  void getOrders() async {
    String query = "Select id,uid,amount,Qty,DNT,pmode from orders where uid = 1 and pmode = \"Online wallet\"";
    String Url = "http://192.168.55.94:5000/?query=" + query;
    var response = await http.get(Uri.parse(Url));
    var data = jsonDecode(response.body);
    // print(data);
    // setState(() {
    //       products.add(new Product(id: data["result"], pname: pname, Available_Q: Available_Q, price: price, pdescription: pdescription, Category: Category, EXP: EXP, image: image, Discount: Discount));
    //     });
    for (var pro in data["result"]) {
      print(pro);
      orders produ = new orders.fromJson(pro);
      setState(() {
        allorders.add(produ);
      });
      //
      // }




    }
}

  Widget getBody() {
    if(allorders.contains(null) || allorders.length < 0){
      return Center(child: CircularProgressIndicator(valueColor: new AlwaysStoppedAnimation<Color>(Colors.teal),));
    }else{
      return ListView.builder(
          itemCount: allorders.length,
          itemBuilder: (context,index)
          {
            return getCard(allorders[index]);
          });
    }




  }

  Widget getCard(orders or) {
    return TextButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductPool(Query: "select pid from previouscartpool where (Uid,DNT) =("+1.toString()+",'"+'2022-02-18 14:35:08'+"')",or:or,)));
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

              ),
              // child: Image.asset("assets/images/file.jpeg"),
            ),
            SizedBox(width: 10,),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text("Transaction id: "+or.id.toString(),style: TextStyle(color: Colors.black),),
                  ),
                  Container(
                    child: Text(or.Pmode,style: TextStyle(color: Colors.black)),
                  ),
                  Container(
                    child: Text(or.dt,style: TextStyle(color: Colors.black)),
                  ),
                ],
              ),
            ),
            SizedBox(width: 30,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text("price Rs"+or.amount.toString(),style: TextStyle(color: Colors.black)),
                ),
                Container(
                  child: Text("Quantity "+or.Qty.toString(),style: TextStyle(color: Colors.black)),
                ),
              ],
            ),




          ],
        ),
      ),
    );












  }




}


