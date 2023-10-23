import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  Review({super.key});

  List<Map<String, String>> reviews = [
    {
      'image': 'assets/images/review/dinesh.jpg',
      'name': 'Dinesh Thampi',
      'designation': 'VP operations, TCS',
      'review':'Being a customer of Farmers Fresh Zone, I can definitely say that '
          'I am extremely pleased with their service. You can choose from a wide '
          'range of "safe-to-eat" products, all of which are 100% Fresh and Natural. '
          'I appreciate their efforts in providing healthy food to the customer '
          'helping the livelihood of farmers at the same time.'
    },
    {
      'image': 'assets/images/review/hrishikesh.jpg',
      'name': 'Hrishikesh Nair',
      'designation': 'CEO, Infopark',
      'review':'I am a regular customer of Farmers Fresh Zone needless to say, '
          'I am extremely satisfied with their service service quality! '
          'The deliveries are quick, products are fresh. I save time and '
          'effort by ordering online. The best part is, I get all of this at a '
          'really reasonable price! '
    },
    {
      'image': 'assets/images/review/rinish.jpg',
      'name': 'Rinish K N',
      'designation': 'CTO, RapidValue',
      'review':'I was extremely pleased after seeing the initiative by Farmers '
          'Fresh Zone to connect the Farmer-Supplier-Customer ecosystem. '
          'One thing that sets FFZ apart from the rest is definitely the '
          'fresh taste of their products. I also had a chance to visit their '
          'farm, it was a great experience to take a look at the beautiful farms!'
    },
    {
      'image': 'assets/images/review/shalini.jpeg',
      'name': 'Shalini Warrier',
      'designation': 'Executive Director, Federal Bank',
      'review':'A friend of mine recommended Farmers Fresh Zone to me, during '
          'the first lockdown in March 2020. I have been a regular customer '
          'ever since! You get reliable service, convenient doorstep delivery, '
          'reasonable prices &amp; super fresh products at your fingertips with '
          'their really easy-to-use app! I have been recommending my friends & '
          'family to switch to a healthier lifestyle with Farmers Fresh Zone.'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "What Our Customers Say?",
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox()
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: CarouselSlider(
              items: List.generate(
                  3,
                  (index) => Container(
                        height: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black12)),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 25,
                                        backgroundImage: AssetImage(
                                            reviews[index]['image']!),
                                        //child: Image(image: AssetImage("assets/images/review/dinesh.jpg"),fit: BoxFit.cover,),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(bottom: 10),
                                              child: Text(reviews[index]['name']!,
                                                  style: const TextStyle(
                                                      color:
                                                          Color(0xff00cc00))),
                                            ),
                                            Text(
                                              reviews[index]['designation']!,
                                              style: const TextStyle(fontSize: 12),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  const Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 10),
                                        child: Icon(
                                          Icons.format_quote,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      SizedBox()
                                    ],
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  reviews[index]['review']!,
                                  style: const TextStyle(fontSize: 12),
                                  textAlign: TextAlign.justify,
                                ),
                              )
                            ],
                          ),
                        ),
                      )),
              options: CarouselOptions(
                  height: 180,
                  autoPlay: true,
                  viewportFraction: 1,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: const Duration(seconds: 3))),
        ),
      ],
    );
  }
}
