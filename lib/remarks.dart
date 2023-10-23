import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class RemarksPage extends StatelessWidget {
  const RemarksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children:[
          const Text('This Kochi-based-farm-to-fork online\n '
              'marketplace is connecting famers directly\n to customers',style: TextStyle(fontSize: 12,height: 2),textAlign: TextAlign.center,),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 10,
                  width: 100,
                  decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/images/remarks/economic_times.png"),fit: BoxFit.fill)
                  ),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/remarks/your_story.png"),fit: BoxFit.fill)
                  ),
                ),
                Container(
                  height: 50,
                  width: 100,
                  decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/remarks/The-Indian-Express.png"),fit: BoxFit.fill)
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/remarks/mnew.png"),fit: BoxFit.fill)
                  ),
                )
              ],
            ),
          ),
          const Divider(
            thickness: 6,
            color: Colors.black12,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10,top: 20),
            child: Row(
              children: [
                Text("Get To Know Us"),
                SizedBox()
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 15),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text("About Us",style: TextStyle(fontSize: 10,color: Colors.grey),),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text("|",style: TextStyle(fontSize: 10,color: Colors.grey)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text("Our Farmers",style: TextStyle(fontSize: 10,color: Colors.grey)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text("|",style: TextStyle(fontSize: 10,color: Colors.grey)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text("Blog",style: TextStyle(fontSize: 10,color: Colors.grey)),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10,top: 20),
            child: Row(
              children: [
                Text("Useful Links"),
                SizedBox()
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 15),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text("Privacy Policy",style: TextStyle(fontSize: 10,color: Colors.grey),),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text("|",style: TextStyle(fontSize: 10,color: Colors.grey)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text("Returns & Refund Policy",style: TextStyle(fontSize: 10,color: Colors.grey)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text("|",style: TextStyle(fontSize: 10,color: Colors.grey)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text("Terms & Conditions",style: TextStyle(fontSize: 10,color: Colors.grey)),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(FontAwesomeIcons.twitter,color: Colors.grey,),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: FaIcon(FontAwesomeIcons.youtube,color: Colors.grey,),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: FaIcon(FontAwesomeIcons.facebook,color: Colors.grey,),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: FaIcon(FontAwesomeIcons.instagram,color: Colors.grey,),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: const BoxDecoration(
                color:Color(0xff00cc00)
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Copyright @ 2021 Farmers Fresh Zone.\n"
                      "All Rights Reserved. V 2.40.51",style: TextStyle(color: Colors.white,fontSize: 11),textAlign: TextAlign.center,),
                ],
              ),
            ),
          )
        ],
      );
  }
}
