class prevOrder{
    late int uid;
    late int pid;
    late int Qty;
    late String dt;


    prevOrder({required this.uid,required this.pid,required this.Qty,required this.dt,});

    factory prevOrder.fromJson(List<dynamic> json) {
      return prevOrder(uid: json[0], pid: json[1], Qty: json[2], dt: json[3]);
    }







}