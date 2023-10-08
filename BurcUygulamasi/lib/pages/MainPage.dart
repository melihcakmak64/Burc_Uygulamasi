import 'package:flutter/material.dart';
import 'strings.dart';
import 'details_page.dart';
class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Burçlar Listesi"),),
      body: ListView.builder(itemCount: Strings.BURC_ADLARI.length,itemBuilder: (context, index) {
        return Card(child: ListTile(
          onTap: (){

            Navigator.push(context, MaterialPageRoute( builder: (context) => Details(index),));},
          leading: Image.asset("images/${Strings.BURC_ADLARI[index].toLowerCase()}${index+1}.png"),
          title: Text(Strings.BURC_ADLARI[index]),
          subtitle: Text(Strings.BURC_TARIHLERI[index]),
          trailing: Icon(Icons.keyboard_arrow_right_outlined,size: 35,),));


      },),
    );
  }
}
