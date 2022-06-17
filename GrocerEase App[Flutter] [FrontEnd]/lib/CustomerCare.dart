class CustomerCare{
  late int id;
  late String Fname;
  late String Lname;
  late String Gender;
  late String email;
  late String houseno;
  late String CityorVillage;
  late String State;
  late int PinCode;


  CustomerCare({required this.id,required this.Fname,required this.Lname,required this.Gender,required this.email
    ,required this.houseno,required this.CityorVillage,required this.State,required this.PinCode});

 factory CustomerCare.fromJson(List<dynamic> json){
   return CustomerCare(id: json[0], Fname: json[1], Lname: json[2], Gender: json[3], email: json[4],
       houseno: json[5], CityorVillage: json[6], State: json[7], PinCode: json[8]);

 }



}