class Product{
  late int id;
  late String pname;
  late int Available_Q;
  late double price;
  late String pdescription;
  late String Category;
  late String EXP;
  late String image;
  late double Discount;

  Product({required this.id,required this.pname,
    required this.Available_Q,required this.price,
    required this.pdescription, required this.Category,
    required this.EXP,required this.image,
    required this.Discount});

  factory Product.fromJson(List<dynamic> json){
    return  Product(id: json[0], pname: json[1], Available_Q: json[2],
        price: json[3], pdescription: json[4], Category: json[5], EXP: json[6], image: json[8], Discount: json[7]);
  }

}