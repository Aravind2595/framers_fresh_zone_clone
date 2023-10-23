import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BestSellingProducts(),
  ));
}

class BestSellingProducts extends StatelessWidget {
  List<Map<String, String>> products = [
    {
      'name': 'Tomato (450gm-550gm)',
      'rate': '11',
      'actual': '22',
      'discount': '50 % OFF',
      'sale': '1.00 NOS',
      'image': 'assets/images/bestSelling/tomato.jpg'
    },
    {
      'name': 'YAM (Elephant Foot) (450gm-550gm)',
      'rate': '54',
      'actual': '72',
      'discount': '',
      'sale': '1.00 NOS',
      'image': 'assets/images/bestSelling/yam.jpg'
    },
    {
      'name': 'Citrus - Imported (450gm-550gm)',
      'rate': '145',
      'actual': '175',
      'discount': '',
      'sale': '1.00 NOS',
      'image': 'assets/images/bestSelling/citrus.jpg'
    },
    {
      'name': 'Carrot (450gm-550gm)',
      'rate': '40',
      'actual': '60',
      'discount': '',
      'sale': '1.00 NOS',
      'image': 'assets/images/bestSelling/carrot.jpg'
    },
    {
      'name': 'Avial Cut Family Pack 500g',
      'rate': '89',
      'actual': '110',
      'discount': '19 % OFF',
      'sale': '1.00 NOS',
      'image': 'assets/images/bestSelling/avialCutFamilyPack.jpg'
    },
    {
      'name': 'Njali Poovan-Semi ripe (450gm-550gm)',
      'rate': '51',
      'actual': '76',
      'discount': '',
      'sale': '1.00 NOS',
      'image': 'assets/images/bestSelling/njaliPoovan.jpg'
    },
    {
      'name': 'Ldies Finger',
      'rate': '23.4',
      'actual': '31',
      'discount': '24 % OFF',
      'sale': '0.30 Kg',
      'image': 'assets/images/bestSelling/ladiesFinger.jpg'
    },
    {
      'name': 'Amaranthus Green (200gm)',
      'rate': '19',
      'actual': '37',
      'discount': '48 % OFF',
      'sale': '1.00 NOS',
      'image': 'assets/images/bestSelling/amaranthusGreen.jpg'
    },
    {
      'name': 'Button Mushroom (200 g)',
      'rate': '75',
      'actual': '83',
      'discount': '',
      'sale': '1.00 Pack',
      'image': 'assets/images/bestSelling/buttonMushroom.jpg'
    },
    {
      'name': 'Kiwi (3 Nos)',
      'rate': '206',
      'actual': '227',
      'discount': '',
      'sale': '1.00 Box',
      'image': 'assets/images/bestSelling/kiwi.jpg'
    },
    {
      'name': 'Cauliflower - 1 Nos (600g-900g)',
      'rate': '55',
      'actual': '75',
      'discount': '27 % OFF',
      'sale': '1.00 NOS',
      'image': 'assets/images/bestSelling/cauliFlower.jpg'
    },
    {
      'name': 'Green Apple - Granny Smith (450g-550g)',
      'rate': '244',
      'actual': '256',
      'discount': '',
      'sale': '1.00 NOS',
      'image': 'assets/images/bestSelling/greenApple.jpg'
    },
    {
      'name': 'Sambar Cut Mini Pack 250g',
      'rate': '59',
      'actual': '69',
      'discount': '14% OFF',
      'sale': '1.00 Box',
      'image': 'assets/images/bestSelling/sambarCutMiniPack.jpg'
    },
    {
      'name': 'Strawberry 200g',
      'rate': '209',
      'actual': '250',
      'discount': '',
      'sale': '1.00 Box',
      'image': 'assets/images/bestSelling/strawberry.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10, bottom: 20, top: 10),
          child: Row(
            children: [
              Text(
                "Best Selling Products",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox()
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5,right: 5),
          child: GridView(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.65,
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5),
            children: List.generate(
                14,
                (index) => Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.black12)),
                      child: Column(
                        children: [
                          Container(
                            height: 150,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(products[index]['image']!),
                                    fit: BoxFit.cover)),
                          ),
                          Stack(
                            children: [
                              Container(
                                height: 120,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  overflow: TextOverflow.visible,
                                  products[index]['name']!,
                                  style: const TextStyle(fontSize: 15),
                                ),
                              ),
                              Positioned(
                                top: 50,
                                left: 10,
                                child: Row(
                                  children: [
                                    Text("₹${products[index]['rate']!} "),
                                    Text(
                                      "₹${products[index]['actual']!}",
                                      style: const TextStyle(
                                          decoration: TextDecoration.lineThrough,
                                          color: Colors.grey),
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                right: 10,
                                top: 50,
                                child: Text(
                                  products[index]['discount']!,
                                  style: const TextStyle(color: Colors.red),
                                ),
                              ),
                              Positioned(
                                top: 90,
                                left: 10,
                                child: Text(products[index]['sale']!),
                              ),
                              Positioned(
                                right: 10,
                                top: 70,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xff00cc00),
                                    ),
                                    onPressed: () {},
                                    child: const Text("ADD")),
                              )
                            ],
                          ),
                        ],
                      ),
                    )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5,right: 5),
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10)
            ),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff00cc00),
                ),
                onPressed: (){}, child: const Text("VIEW MORE")),
          ),
        )
      ],
    );
  }
}
