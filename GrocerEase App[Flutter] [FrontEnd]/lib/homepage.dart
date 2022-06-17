import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:untitled1/pages/Listviewproducts.dart';
import 'package:untitled1/pages/cardProducts.dart';
import 'package:untitled1/pages/customerpage.dart';
import 'package:untitled1/pages/orderspage.dart';
import 'package:untitled1/pages/suggestions.dart';
import 'package:intl/intl.dart';

import 'customer.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Customer cus;
  late String totp;
  late String tq;
  getTime(){
    DateTime now = DateTime.now();
    String formattedTime = DateFormat.Hms().format(now);
    final arr=formattedTime.split(":");
    return arr[0];
  }
  Widget getthingTime(){
    if(int.parse(getTime())>12){
      return GestureDetector(
        onTap: (){
          String url="SELECT * FROM `products` WHERE category Like \"%milk%\"";
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ListViewProducts(Query:url)));
        },
        child: Container(
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.teal,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text("Time for ",style:TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22
                ) ,),
              ),
              Center(
                child: Text("positivity-milk",style:TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22
                ) ,),
              ),
              Center(child: Text("Take a break &",)),
              Center(child: Text("recharge yourself",)),
            ],
          ),

        ),
      );
    }
    else{
      return GestureDetector(
      onTap: (){
      String url="SELECT * FROM `products` WHERE category Like \"%juice%\"";
      Navigator.push(context, MaterialPageRoute(builder: (context)=>ListViewProducts(Query:url)));
      },
      child: Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      color: Colors.teal,
      ),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
      Center(
      child: Text("Time for ",style:TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 22
    ) ,),
    ),
    Center(
    child: Text("positivity-juice",style:TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 22
    ) ,),
    ),
    Center(child: Text("Take a break &",)),
    Center(child: Text("recharge yourself",)),
    ],
    ),

    ),
    );
    }
  }

  @override
  void initState() {
    getData();
    // uploadfile();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
            title:Text("Home Page"),
          leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>CartProducts()));
            },
            icon: Icon(Icons.add_shopping_cart),


          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Container(
              child:TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  CustomerPage(s: cus,totalexpenditure: totp,QTY:tq)),
                    );
                  },
              child: Text("Person Profile")),
            ),
          getthingTime(),

          thirdwidget(),
          fourthwidget(),
          fifthWidget(),
          sixthWidget(),
              seventhWidget(),






            ] ),
    ),
      ),
    );
  }









  void getData() async {
    String query = "Select * from customer where id=11";
    String Url = "http://192.168.55.94:5000/?query=" + query;
    var res=await http.get(Uri.parse(Url));
    if(res.statusCode!=200){
      print("error                                                                                       ");
    }
    else{
    var data=jsonDecode(res.body)["result"][0];
    print(data);
    cus=new Customer(id: data[0], Fname: data[1], Lname: data[2], Gender: data[3], email: data[4],
                      houseno: data[5], CityorVillage: data[6], State: data[7], PinCode: data[8]);

    }
    String ur="http://192.168.55.94:5000/?query=select sum(amount), sum(qty) from orders where uid = 11";
    var resp=await http.get(Uri.parse(ur));
    var d=jsonDecode(resp.body)["result"][0];

    tq=d[1];
    totp=d[0];



  }

  Widget thirdwidget() {
    return TextButton(

      onPressed: () {
        String url="Select  * from products where Category Like \"%Fruits\" and Discount <= 25";
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ListViewProducts(Query: url,)));
      },
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.teal,
        ),

        child:Text("products with  less than 25% discount",style: TextStyle(color: Colors.black)),
      ),
    );


  }


  Widget fourthwidget() {
    return TextButton(

      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Orderspage()));
      },
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.teal,
        ),

        child:Text("My previous order ",style: TextStyle(color: Colors.black)),
      ),
    );


  }

  Widget fifthWidget() {
    return  TextButton(

      onPressed: () {
        String url="select id,pname,Available_Q,price,pdescription,Category,EXP,Discount,image  from (select *, count(*) as cnt, SUBSTRING_INDEX(category,',',-1) as cat ,sum(qty), (count(*)*sum(qty)) as num from previouscartpool as p1, products as p2 where p1.pid = p2.id group by pid order by num desc) as p3 group by p3.cat";
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ListViewProducts(Query:
        url)));
      },
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.teal,
        ),

        child:Text("BestSeller of every Category",style: TextStyle(color: Colors.black)),
      ),
    ) ;
  }

  Widget sixthWidget() {
    return  TextButton(

      onPressed: () {
        String url="Select * from favorite_products";
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ListViewProducts(Query: url)));
      },
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.teal,
        ),

        child:Text("Favourates Products",style: TextStyle(color: Colors.black),),
      ),
    ) ;
  }
  Widget seventhWidget() {
    return  TextButton(

      onPressed: () {

        Navigator.push(context, MaterialPageRoute(builder: (context)=>Suggestions()));
      },
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.teal,
        ),

        child:Text("Suggestion",style: TextStyle(color: Colors.black)),
      ),
    ) ;
  }

}
