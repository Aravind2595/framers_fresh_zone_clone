import 'package:flutter/material.dart';


class BlogPost extends StatelessWidget {

  List<Map<String,String>> blogs=[
    {'content':'Control Blood Pressure, the ri','image':'assets/images/blog/controlBlood.jpg'},
    {'content':'Five reasons why Broccoli shou','image':'assets/images/blog/broccoli.jpg'},
    {'content':'Five tips that prevent you fro','image':'assets/images/blog/fever.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Text(
                    "Our Blog Posts",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox()
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,right: 10),
              child: SizedBox(
                height: 180,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                      3,
                      (index) => Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Container(
                          height: 180,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.black12
                            )
                          ),
                          child: Column(
                                children: [
                                  Container(
                                    height: 100,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                blogs[index]['image']!),
                                            fit: BoxFit.fill)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                                    child: Text(
                                      blogs[index]['content']!,
                                      overflow: TextOverflow.visible,

                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 10,right: 10,top: 10),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("a year ago",style: TextStyle(fontSize: 10),),
                                        Icon(Icons.arrow_forward,size: 15,color: Color(0xff00cc00),)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                        ),
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: TextButton(onPressed: (){}, child: const Text("VIEW MORE",style: TextStyle(color:Color(0xff00cc00)),)),
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
