import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageView1 extends StatefulWidget {
  const ImageView1({super.key});

  @override
  State<ImageView1> createState() => _ImageView1State();
}

class _ImageView1State extends State<ImageView1> {
  var _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            const Text(""),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.shopping_bag_outlined))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              content(),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Low Banicia",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 280),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: () {
                              setState(() {
                                _count += 1;
                              });
                            },
                          ),
                          Text(_count.toString()),
                          IconButton(
                            icon: const Icon(Icons.remove),
                            onPressed: () {
                              setState(() {
                                _count -= 1;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ), //counter
              const Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Text(
                    '(270 reviews)',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: Colors.black),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 180),
                    child: Text(
                      'Available in stock',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Text(
                      "Size:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        shape: const CircleBorder(side: BorderSide(width: 1)),
                      ),
                      child: const Text(
                        '39',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        shape: const CircleBorder(side: BorderSide(width: 1)),
                      ),
                      child: const Text(
                        '39.5',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        shape: const CircleBorder(side: BorderSide(width: 1)),
                      ),
                      child: const Text(
                        '40',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        shape: const CircleBorder(side: BorderSide(width: 1)),
                      ),
                      child: const Text(
                        '40.5',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        shape: const CircleBorder(side: BorderSide(width: 1)),
                      ),
                      child: const Text(
                        '50',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Text(
                      "Colors:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: const CircleBorder(),
                      ),
                      child: const Text(
                        '',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: const CircleBorder(),
                      ),
                      child: const Text(
                        '',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: const CircleBorder(),
                      ),
                      child: const Text(
                        '',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.grey,
                        shape: const CircleBorder(),
                      ),
                      child: const Text(
                        '',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Description",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                        "Low Banicia have consistently featured cutting-edge technology \nand design, making them desirable not just as fashion \nitems but also as high-performance athletic shoes.")
                  ],
                ),
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 50),
                    child: Text("Price\n4500",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                        ),
                        onPressed: () {},
                        child: const Row(
                          children: [
                            Icon(
                              Icons.shopping_bag_outlined,
                              color: Colors.white,
                            ),
                            Text("Add To cart",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.white)),
                          ],
                        )),
                  )
                ],
              )
            ],
          ),
        ));
  }

  Widget content() {
    return CarouselSlider(
      items: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 50),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/imag1.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 50),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/image2.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 50),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/image3.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
      options: CarouselOptions(
        height: 200,
      ),
    );
  }
}
