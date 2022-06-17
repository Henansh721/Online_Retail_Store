class orders{

  late int id;
  late int uid;
  late int amount;
  late int Qty;
  late String dt;
  late String Pmode;
  String Recepit="this is your recepit";

  orders({required this.id,required this.uid,required this.amount,required this.Qty,required this.dt,required this.Pmode});


  factory orders.fromJson(List<dynamic> json){
    return  orders(id:json[0], uid: json[1], amount: json[2], Qty: json[3], dt: json[4], Pmode: json[5]);
  }


}