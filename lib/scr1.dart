import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/iamge.dart';
import 'package:flutter/material.dart';

class ScreenOneView extends StatefulWidget {
  const ScreenOneView({super.key});

  @override
  State<ScreenOneView> createState() => _ScreenOneViewState();
}

class _ScreenOneViewState extends State<ScreenOneView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          content(),
          const Row(
            children: [
              Text(
                "New Arrivals",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Padding(
                padding: EdgeInsets.only(left: 300),
                child: Text(
                  "View All",
                  style: TextStyle(fontSize: 10),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                    width: 200,
                    height: 200,
                    clipBehavior: Clip.antiAlias,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    child: GestureDetector(
                      child: Image.asset("assets/box1.png"),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ImageView1()));
                      },
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Container(
                    width: 200,
                    height: 200,
                    clipBehavior: Clip.antiAlias,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    child: GestureDetector(
                      child: Image.asset("assets/box2.png"),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ImageView1()));
                      },
                    )),
              ),
            ],
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                child: Text(
                  "Low Banicia\n    6000Rs",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 90, vertical: 10),
                child: Text(
                  "Gutties Vall\n    6000Rs",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
            ],
          ),
          const Row(
            children: [
              Text(
                "Popular",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Padding(
                padding: EdgeInsets.only(left: 300),
                child: Text(
                  "View All",
                  style: TextStyle(fontSize: 10),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.white,
              child: ListTile(
                textColor: Colors.black,
                leading: const CircleAvatar(backgroundImage: AssetImage("assets/avatar.png"),radius: 30,),
                title: const Text(
                  'Jordan',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black),
                ),
                trailing: const Text(
                  "10000Rs",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black),
                ),
                subtitle: const Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                     Text(
                      '4.5',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.black),
                    ),
                  ],
                ),
                selected: true,
                onTap: () {},
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.white,
              child: ListTile(
                textColor: Colors.black,
                leading: const CircleAvatar(backgroundImage: AssetImage("assets/avatar2.png"),radius: 30,),
                title: const Text(
                  'Nike Air',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black),
                ),
                trailing: const Text(
                  "6000Rs",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black),
                ),
                subtitle: const Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                     Text(
                      '4.3',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.black),
                    ),
                  ],
                ),
                selected: true,
                onTap: () {},
              ),
            ),
          ),
        ],
      ),
    ));
  }

  Widget content() {
    return CarouselSlider(
      items: [
        Container(
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage("assets/slide1.png"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage("assets/slide2.png"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage("assets/slide3.png"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ],
      options: CarouselOptions(
        height: 180,
        viewportFraction: 0.6,
        aspectRatio: 16 / 8,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 2),
        enlargeCenterPage: true,
      ),
    );
  }
}