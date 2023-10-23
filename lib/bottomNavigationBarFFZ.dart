import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main(){
  runApp(const MaterialApp(
    home: BottomNavBarFFZ(),
  ));
}

class BottomNavBarFFZ extends StatelessWidget {
  const BottomNavBarFFZ({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
          child: Container(
            decoration: const BoxDecoration(
                color:Colors.white,
                boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(1, 1),
                )]
            ),
            height: 60,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:[
                    Image(image: AssetImage("assets/images/ffzLogo.png"),height: 25,width: 25,color: Color(0xff00cc00),),
                    Text("HOME",style: TextStyle(fontSize: 9,color: Color(0xff00cc00)),)
                  ]
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:[
                      FaIcon(FontAwesomeIcons.cartShopping,size: 22,color: Colors.grey,),
                      Text("CART",style: TextStyle(fontSize: 9,color: Colors.grey),)
                    ]
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:[
                      FaIcon(FontAwesomeIcons.user,size: 22,color: Colors.grey,),
                      Text("ACCOUNT",style: TextStyle(fontSize: 9,color: Colors.grey),)
                    ]
                )
              ],
            ),
          ));
  }
}
