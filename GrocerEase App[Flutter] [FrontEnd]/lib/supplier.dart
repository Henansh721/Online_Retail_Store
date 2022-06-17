class Supplier{
  late int id;
  late String sname;
  late String Gstno;
  late String Scono;
  late String CityorVillage;
  late String State;
  late int PinCode;

  Supplier({required this.id,required this.sname,required this.Gstno,required this.Scono,
    required this.CityorVillage,required this.State,required this.PinCode,});

  factory Supplier.fromJson(List<dynamic> json){
    return Supplier(id: json[0], sname: json[1], Gstno: json[2], Scono: json[3], CityorVillage: json[4], State: json[5], PinCode: json[6]);
  }


}