import 'package:flutter/material.dart';



class KnowYourFarmer extends StatelessWidget {
  const KnowYourFarmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 7),
            child: Divider(
              thickness: 6,
              color: Colors.black12,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2,bottom: 2),
            child: Container(
              width: double.infinity,
              height: 150,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/knowYourFarmer/knowYourFamer.jpg"),fit: BoxFit.cover)
              ),
            ),
          ),
          const Divider(
            thickness: 6,
            color: Colors.black12,
          ),
        ],
      );
  }
}
