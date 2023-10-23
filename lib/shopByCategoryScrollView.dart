import 'package:flutter/material.dart';

class CategrotyScrollView extends StatelessWidget {

  List<String> categories=['OFFERS','VEGETABLES','FRUITS','EXOTIC','FRESH CUTS',
    'NUTRITION CHARGES','PACKED FLAVOURS','GOURMET SALADS'];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(8, (index) => Padding(
          padding: const EdgeInsets.only(top:8,left: 2,right: 2),
          child: Container(
            height: 30,
            width: categories[index].length*12,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xff00cc00),width: 0.5),
              color: Color(0xffb3e6b3),
              borderRadius: BorderRadius.circular(30)
            ),
            child: Padding(
              padding: const EdgeInsets.only(left:8.0,right: 8),
              child: Center(child: Text(categories[index],style: TextStyle(color: Color(0xff00802b),fontSize: 10),),),
            ),
          ),
        )),
      ),
    );
  }
}