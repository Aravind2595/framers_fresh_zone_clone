import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class CarouselOffers extends StatelessWidget {

  List<String> images=[
    'assets/images/offers/offer1.jpg',
    'assets/images/offers/offer2.jpg',
    'assets/images/offers/offer3.jpg',
    'assets/images/offers/offer4.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10,bottom: 10),
      child: CarouselSlider(items: List.generate(4, (index) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(images[index]),fit: BoxFit.fill
          )
        ),
      )), options: CarouselOptions(
          height: 180,
          autoPlay: true,
          viewportFraction: 1,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(seconds: 3)
      )),
    );
  }
}
