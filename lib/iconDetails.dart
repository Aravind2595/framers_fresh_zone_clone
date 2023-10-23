import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconsDetails extends StatelessWidget {
  const IconsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: const Color(0xff00cc00),width: 0.5)
          ),
          child: const Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(Icons.timer,color: Colors.green,),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text("30 MINS POLICY",style: TextStyle(fontSize: 10),),
                    )
                  ],
                ),
                Column(
                  children: [
                    FaIcon(FontAwesomeIcons.mobileScreen,color: Colors.green,),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text("TRACEABILITY",style: TextStyle(fontSize: 10),),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.agriculture,color: Colors.green,),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text("LOCAL SOURCING",style: TextStyle(fontSize: 10),),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      );
  }
}
