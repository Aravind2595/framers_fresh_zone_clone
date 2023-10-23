import 'package:flutter/material.dart';

class Certificate extends StatelessWidget {
  const Certificate({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 2),
        child: Column(
          children: [
            const Divider(
              thickness: 6,
              color: Colors.black12,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 170,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/certificateFFZ.jpg"),
                )
              ),
            ),
            const Divider(
              thickness: 6,
              color: Colors.black12,
            ),
          ],
        ),
      );
  }
}
