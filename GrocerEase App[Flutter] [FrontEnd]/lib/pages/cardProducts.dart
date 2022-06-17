import 'dart:convert';




import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../products.dart';
import 'fruitpage.dart';
class CartProducts extends StatefulWidget {
  const CartProducts({Key? key}) : super(key: key);

  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  late double totalprice;
  late String totalprod;
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
  Widget getdelivery( double tp){
    if(tp<300){
      return Container(
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.all(10.0),
        child:Text("Add more Rs"+(300-tp).toString() +" to get free delivery",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
      );
    }
    else{
      return Container(
        child:Text("Free delivery available",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
      );
    }
  }
  Future getproducts() async {
    String url1="http://192.168.55.94:5000/?query=select sum((price*qty)), sum(qty) as num  from products as p1 ,(select pid,qty from cartproductpool where uid = 1) as p2 where p1.id=p2.pid";
    var respon = await http.get(Uri.parse(url1));
    var da = jsonDecode(respon.body);
    print(da);
    totalprice=da["result"][0][0];
    totalprod=da["result"][0][1];
    print(totalprice);
    print(totalprod);

    print("products starts");
    String Url = "http://192.168.55.94:5000/?query=Select pid from cartproductpool where uid=1";
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


      // print(products[0]);
      print("products ends");
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            TextButton(
              onPressed: (){
                givedata();
                Navigator.pop(context);
              },
              child: Container(
                child:Text("Order all products",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
              ),
            ),
            Container(
              child:Text("Total price "+totalprice.toString(),style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
            ),
            Container(
              child:Text("Total products "+totalprod.toString(),style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
            ),
            getdelivery(totalprice),
            SizedBox(
              height: 10,
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
          ],
        ),
      ),
    );
  }

  void givedata() async {
    String DNT = DateTime.now().toString();

    String url="http://192.168.55.94:5000/?query=insert into orders(DNT,UID,AMOUNT,PMODE,RECEPIT,QTY) values('"+DNT.toString()+"',"+12.toString()+","+totalprice.toString()+",\"online wallet\",\"This is recepit\","+totalprod+")";
    print(url);
    String u="http://192.168.55.94:5000/?query=Delete from cartproductpool where uid=12";
    var re=await http.get(Uri.parse(url));
    var r=await http.get(Uri.parse(u));
    print("kuch bhi");
  }
}

