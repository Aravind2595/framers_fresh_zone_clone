import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:framers_fresh_zone_clone/bestSellingProducts.dart';
import 'package:framers_fresh_zone_clone/blogPost.dart';
import 'package:framers_fresh_zone_clone/bottomNavigationBarFFZ.dart';
import 'package:framers_fresh_zone_clone/carouselOffers.dart';
import 'package:framers_fresh_zone_clone/certificate.dart';
import 'package:framers_fresh_zone_clone/iconDetails.dart';
import 'package:framers_fresh_zone_clone/knowyourfarmer.dart';
import 'package:framers_fresh_zone_clone/remarks.dart';
import 'package:framers_fresh_zone_clone/review.dart';
import 'package:framers_fresh_zone_clone/shopByCategory.dart';
import 'package:framers_fresh_zone_clone/shopByCategoryScrollView.dart';

void main() {
  runApp(MaterialApp(
    home: HomePageSliver(),
  ));
}

class HomePageSliver extends StatelessWidget {
  const HomePageSliver({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: false,
            pinned: false,
            title: const Text("FARMERS FRESH ZONE"),
            backgroundColor: const Color(0xff00cc00),
            titleTextStyle: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20),
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.locationDot,
                      color: Colors.white,
                      size: 17,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text(
                        "Kochi",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                      size: 15,
                    )
                  ],
                ),
              )
            ],
            bottom: AppBar(
              backgroundColor: const Color(0xff00cc00),
              elevation: 0,
              title: SizedBox(
                height: 35,
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.search_outlined,
                          size: 18,
                        ),
                      ),
                      hintText: "Search for Vegetables, Fruits ..",
                      hintStyle: const TextStyle(fontSize: 13),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xff00cc00)),
                          borderRadius: BorderRadius.circular(5))),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 1,
              (context, index) => Column(
                children: [
                  CategrotyScrollView(),
                  CarouselOffers(),
                  const IconsDetails(),
                  ShopByCategory(),
                  const KnowYourFarmer(),
                  BestSellingProducts(),
                  const Certificate(),
                  BlogPost(),
                  Review(),
                  const RemarksPage()
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBarFFZ()
    );
  }
}
