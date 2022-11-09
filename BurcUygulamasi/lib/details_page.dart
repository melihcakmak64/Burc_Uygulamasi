import 'package:flutter/material.dart';
import 'package:untitled/strings.dart';
class Details extends StatelessWidget {
   int index=0;
   Details(this.index,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
          slivers: [
        SliverAppBar(title: Text("Burç Rehberi"),pinned: false, ),
        SliverList(delegate: SliverChildListDelegate([Image.asset("images/${Strings.BURC_ADLARI[index].toLowerCase()}_buyuk${index+1}.png"),Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(Strings.BURC_GENEL_OZELLIKLERI[index],textAlign: TextAlign.center),
        )]
          
          
          
        ))

      ]),
    );
  }
}
