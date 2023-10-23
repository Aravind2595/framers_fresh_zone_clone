import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: ShopByCategory(),
  ));
}
class ShopByCategory extends StatelessWidget {

  List<Map<String,String>> categoriesImages=[
    {'name':'Offers','image':'assets/images/shopByCategory/offers.jpg'},
    {'name':'Vegetables','image':'assets/images/shopByCategory/vegetables.jpg'},
    {'name':'Fruits','image':'assets/images/shopByCategory/fruits.jpg'},
    {'name':'Exotic','image':'assets/images/shopByCategory/exotic.jpg'},
    {'name':'Fresh Cuts','image':'assets/images/shopByCategory/freshCuts.jpg'},
    {'name':'Nutrition Chargers','image':'assets/images/shopByCategory/nutritionCharges.jpg'},
    {'name':'Packed Flavours','image':'assets/images/shopByCategory/packedflavours.jpg'},
    {'name':'Gourmet Salads','image':'assets/images/shopByCategory/gourmetSalads.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top:10,
              left: 10),
          child: Row(
            children: [
              Text("Shop By Category",style: TextStyle(fontSize: 18),),
              SizedBox()
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5,right: 5,top: 20),
          child: GridView(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.85,
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10
          ),
          children: List.generate(8
              , (index) => Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(1, 1),
                )
              ]
            ),

            child: Column(
              children: [
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                    image: DecorationImage(image: AssetImage(categoriesImages[index]['image']!),fit: BoxFit.cover)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(categoriesImages[index]['name']!,style: const TextStyle(fontSize: 13,),),
                )
              ],
            ),
          )
          )
          ,),
        )
      ],
    );
  }
}
