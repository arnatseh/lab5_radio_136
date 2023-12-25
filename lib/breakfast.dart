class Breakfast {
  final  String thName;
  final  String enName;  ///?
  final  double price;
  final  String value;  ///Radiolisttile value

  Breakfast(
    {required this.thName, 
    required this.enName, 
    required this.price, 
    required this.value}); 

static List<Breakfast> getbreakfast() {

  return [
    Breakfast(thName: "แฮม", 
    enName: "ham", 
    price: 20, 
    value: "ham"),
    Breakfast(thName: "ชา", 
    enName: "tea", 
    price: 15, 
    value: "tea"),
    Breakfast(thName: "ลาซันญ่า", 
    enName: "lasagna", 
    price: 50, 
    value: "lasagna"),
    Breakfast(thName: "ขนมปัง", 
    enName: "bread", 
    price: 25, 
    value: "bread"),
    Breakfast(thName: "เคบับ", 
    enName: "kebab", 
    price: 55, 
    value: "kebab"),
  ];
}


}
