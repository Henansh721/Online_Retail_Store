class deliveryDept{
  late int id;
  late String Dname;
  late String email;
  late String scono;
  late String CityorVillage;
  late String State;
  late int Pincode;


  deliveryDept({required this.id,required this.Dname,required this.email,required this.scono,
    required this.CityorVillage,required this.State,required this.Pincode,});

  factory deliveryDept.fromJson(List<dynamic> json) {
    return deliveryDept(id:json[0], Dname: json[1], email: json[2],
        scono: json[3], CityorVillage: json[4], State: json[5], Pincode: json[6], );
  }

}