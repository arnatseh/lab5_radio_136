import 'package:flutter/material.dart';
import 'package:lab5_136/breakfast.dart';


class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
 List<Breakfast> breakfasts = [];

 String groupValue = "เลือกเมนูที่อยากแ_กด้วยครับ";

  @override
  void initState() {
    super.initState();
    breakfasts = Breakfast.getbreakfast();
    for (var bf in breakfasts) {
      print(bf.thName);
    }
    }
    
  List<Widget> createbreakfastlist(){
    List<Widget> myWidgets = [];
    for (var bf in breakfasts) {
      myWidgets.add(
        RadioListTile(
          title: Text(bf.thName),
          subtitle: Text(bf.enName),
          secondary: Text(bf.price.toString()),
          value: bf.value, 
          groupValue: groupValue, 
          onChanged: (value){
          setState(() {
            groupValue = value!;
          });
        } )
      );
    }
    return myWidgets;
  }  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ตื่นก็สายทำเรื่องนี้เพื่อไรหว้า'),
      ),
      body: Column(
        children: [
          const Text("breakfast"),
          Column(
            children: createbreakfastlist(),
          ),
          Text(groupValue),
        ],
      
      ),
    );
  }
}