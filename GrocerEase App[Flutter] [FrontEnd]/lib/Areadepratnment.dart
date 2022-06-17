class AreaDepratnment{
  late int id;
  late String deptname;
  late String email;
  late String scono;
  late String CityorVillage;
  late String State;
  late int Pincode;
  late String Area;

  AreaDepratnment({required this.id,required this.deptname,required this.email,required this.scono,
    required this.CityorVillage,required this.State,required this.Pincode,required Area,});

  factory AreaDepratnment.fromJson(List<dynamic> json) {
    return AreaDepratnment(id:json[0], deptname: json[1], email: json[2],
        scono: json[3], CityorVillage: json[4], State: json[5], Pincode: json[6], Area: json[7]);
  }

}