import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class ChangeSetting extends StatefulWidget {
  int id;
  ChangeSetting({Key? key,required this.id}) : super(key: key);

  @override
  _ChangeSettingState createState() => _ChangeSettingState();
}

class _ChangeSettingState extends State<ChangeSetting> {
  String url1="update customer set email=\"";
  String url2="\" where id =";
  late String email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.teal,
              child: TextField(
                onChanged: (value){
                  setState(() {
                    email=value;
                  });
                },
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  icon: Icon(Icons.location_city,color: Colors.white,),
                  filled:true,
                  fillColor: Colors.white,
                  hintText: "enter email",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide.none,
                  ),


                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  updatedata();
                  Navigator.pop(context);
                },
                child: Container(
                    child:Text("Change",style: TextStyle(
                  fontSize: 22,
                      fontWeight: FontWeight.bold
                ),))),



          ],
        ),

      ),
    );
  }

  void updatedata() async{
    String u="http://192.168.55.94:5000/?query="+url1+email+url2+widget.id.toString();
    print(u);
    var res=await http.get(Uri.parse(u));
  }
}

