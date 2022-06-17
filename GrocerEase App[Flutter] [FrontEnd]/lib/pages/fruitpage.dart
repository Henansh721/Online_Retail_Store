import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../products.dart';

class FruitPage extends StatelessWidget {
  final Product p;
  const FruitPage({Key? key,required this.p}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text(p.pname,style: TextStyle(color:Colors.black,fontWeight:FontWeight.bold),),),
      body: getBody(context),

    );
  }

  Widget getBody(BuildContext context) {
    return SafeArea(
        child:Container(
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child:Container(
                  child: Image.network(p.image,),
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.orange,

                    borderRadius: BorderRadius.circular(60.0),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.white60,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,

                    children: <Widget>[
                      // Container(
                      //     margin: EdgeInsets.all(10.0),
                      //     child:Text(p.pname,style: ktextstyle,)),
                      // SizedBox(
                      //   height: 5.0,
                      // ),
                      Row(
                        children: <Widget>[
                          Container(
                            // margin: EdgeInsets.all(10.0),
                              child: Text('Rs '+p.price.toString(),style: ktextboldstyle,)),
                          SizedBox(
                            width: 70,
                          ),
                          Container(
                            // margin: EdgeInsets.all(10.0),
                              child: Text('Discount % '+p.Discount.toString(),style: ktextboldstyle,)),
                          SizedBox(
                            height: 5.0,
                          ),
                        ],
                      ),
                      Container(
                          // margin: EdgeInsets.all(10.0),
                          child: Text('Quantity '+p.Available_Q.toString(),style: ktextboldstyle,)),
                      SizedBox(
                        height: 5.0,
                      ),
                      Container(
                          // margin: EdgeInsets.all(10.0),
                          child: Text(p.Category,style: ktextboldstyle,)),
                      SizedBox(
                        height: 5.0,
                      ),

                      Flexible(
                        child: Container(
                          // margin: EdgeInsets.all(10.0),
                          child: Text(p.pdescription,style: ktextstyle.copyWith(
                            fontSize: 20,
                            color: Colors.teal,
                          ),),
                        ),
                      ),
                      // Text('Rs '+prize.toString()),
                      // Text('Rs '+prize.toString()),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

    );
  }
}
const ktextstyle=TextStyle(
    fontSize:32.0 ,
    color: Colors.green
);
const ktextboldstyle=TextStyle(
    fontSize:22.0 ,
    color: Colors.green,
    fontWeight: FontWeight.bold
);