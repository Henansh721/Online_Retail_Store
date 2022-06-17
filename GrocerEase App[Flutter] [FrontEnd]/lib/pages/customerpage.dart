import 'package:flutter/material.dart';

import '../customer.dart';
import 'changesetting.dart';

class CustomerPage extends StatelessWidget {
  final  Customer s;
  String totalexpenditure;
  String QTY;
  CustomerPage({Key? key,required this.s,required this.totalexpenditure,required this.QTY}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Person details"),
        leading: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ChangeSetting( id: s.id,)));
          },
          child: Icon(Icons.settings),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left:20,top:20,right:10,bottom: 10),
          margin: EdgeInsets.all(10),
          child: Column(
            children:[
              Container(
              child:Image.asset("assets/images/user.png"),
              ),
              // SizedBox(height: 30,),
              SingleChildScrollView(
                child: Column(
                children: <Widget>[
                  SizedBox(height: 12,),
                  Row(
                      children: [
                        Text("Name :",style: ktextboldstyle),
                        SizedBox(
                          width: 10,
                        ),
                        Text(s.Fname+" "+s.Lname,style: kvalueboldstyle,)
                      ], ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: <Widget>[
                      Text("Gender :",style: ktextboldstyle),
                      SizedBox(
                        width: 10,
                      ),
                      Text(s.Gender,style: kvalueboldstyle,)
                    ], ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Text("Email :",style: ktextboldstyle),
                      SizedBox(
                        width: 10,
                      ),
                      Text(s.email,style: kvalueboldstyle,)
                    ], ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Text("Houseno :",style: ktextboldstyle),
                      SizedBox(
                        width: 10,
                      ),
                      Text(s.houseno,style: kvalueboldstyle,)
                    ], ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Text("CityorVillage :",style: ktextboldstyle),
                      SizedBox(
                        width: 10,
                      ),
                      Text(s.CityorVillage,style: kvalueboldstyle,)
                    ], ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Text("State :",style: ktextboldstyle),
                      SizedBox(
                        width: 10,
                      ),
                      Text(s.State,style: kvalueboldstyle,)
                    ], ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Text("Pincode :",style: ktextboldstyle,),
                      SizedBox(
                        width: 10,
                      ),
                      Text(s.PinCode.toString(),style: kvalueboldstyle,)
                    ], ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Text("Total Expenditure in app :",style: ktextboldstyle),
                      SizedBox(
                        width: 10,
                      ),
                      Text(totalexpenditure.toString(),style: kvalueboldstyle,)
                    ], ),
                  Row(
                    children: [
                      Text("Total product bought in app :",style: ktextboldstyle),
                      SizedBox(
                        width: 10,
                      ),
                      Text(QTY.toString(),style: kvalueboldstyle,)
                    ], ),





                ],
            ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const ktextboldstyle=TextStyle(
    fontSize:25.0 ,
    color: Colors.green,
    fontWeight: FontWeight.bold
);

const kvalueboldstyle=TextStyle(
    fontSize:25.0 ,
    color: Colors.brown,
    fontWeight: FontWeight.bold
);