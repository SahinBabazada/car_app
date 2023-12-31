import 'package:car_app/models/car.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ionicons/ionicons.dart';

import '../widgets/features_card.dart';

class CarDetailScreen extends StatefulWidget {
  const CarDetailScreen({super.key, required this.car});
  final Car car;

  @override
  State<CarDetailScreen> createState() => _CarDetailScreenState();
}

class _CarDetailScreenState extends State<CarDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(34, 38, 43, 1),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton.filled(
            style:
                IconButton.styleFrom(backgroundColor: const Color(0xFF383c40)),
            icon: const Icon(
              Ionicons.arrow_back,
              color: Colors.white,
              size: 18,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        title: const Text(
          "Car Details",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton.filled(
              style: IconButton.styleFrom(
                  backgroundColor: const Color(0xFF383c40)),
              icon: const Icon(
                Ionicons.heart,
                color: Colors.white,
                size: 18,
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromRGBO(34, 38, 43, 1),
        ),
        child: Column(children: [
          Image.network(
            "https://di-uploads-pod5.dealerinspire.com/waltersmercedesbenz/uploads/2020/08/2021_Mercedes-Maybach_GLS-e1599148092349.png",
            height: 225,
            fit: BoxFit.fitWidth,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(24),
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${widget.car.make} ${widget.car.model}',
                        style: const TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Color.fromRGBO(251, 177, 74, 1),
                            size: 20,
                          ),
                          Text(
                            "(${widget.car.displacement})",
                            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                          )
                        ],
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 10),
                    child: const Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                        style: TextStyle(color: Colors.black45),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        textAlign: TextAlign.justify),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 20),
                    child: const Text(
                      'Features',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FeaturesCard(
                        text: 'Total Cylinders',
                        text2: '${widget.car.cylinders} Cylinders',
                        icon: const Icon(Icons.search),
                      ),
                      const FeaturesCard(
                        text: 'Highest Speed',
                        text2: '200 KM/H',
                        icon: Icon(Ionicons.speedometer_outline),
                      ),
                      const FeaturesCard(
                        text: 'Engine Output',
                        text2: '500 HP',
                        icon: FaIcon(FontAwesomeIcons.horse),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Price",
                    style: TextStyle(color: Colors.black87, fontSize: 12)),
                Text("\$45,590",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 16))
              ],
            ),
            TextButton(
                style: IconButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 3, 3, 3),
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 60)),
                onPressed: () {},
                child: const Text(
                  "Buy now",
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
