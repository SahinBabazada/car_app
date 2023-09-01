import 'package:car_app/models/car.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../screens/car_detail.dart';

class CarCardWidget extends StatefulWidget {
  final Car car;
  const CarCardWidget({super.key, required this.car});

  @override
  State<CarCardWidget> createState() => _CarCardWidgetState();
}

class _CarCardWidgetState extends State<CarCardWidget> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(35),
      child: Container(
        margin: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
          color: Color(0xFFf3f5f7)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CarDetailScreen(car: widget.car),
                      ),
                    );
                  },
                  child: Image.network(
                    "https://www.autocar.co.uk/sites/autocar.co.uk/files/images/car-reviews/first-drives/legacy/99-best-luxury-cars-2023-bmw-i7-lead.jpg",
                    width: double.maxFinite,
                    height: 125,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    top: 0.5,
                    left: 0.5,
                    child: IconButton.filled(
                      style:
                          IconButton.styleFrom(backgroundColor: Colors.white),
                      padding: const EdgeInsets.all(4),
                      constraints: const BoxConstraints(),
                      onPressed: () {},
                      icon: const Icon(Ionicons.heart_outline,
                          size: 16, color: Color.fromARGB(255, 59, 34, 32)),
                    ))
              ],
            ),
            SizedBox(
                width: double.maxFinite,
                child: Padding(
                  padding: const EdgeInsets.only(left:8.0),
                  child: Text(
                    // ignore: prefer_interpolation_to_compose_strings
                    widget.car.make + " " + widget.car.model,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 14),
                    overflow: TextOverflow.ellipsis,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("\$ 12545",
                      style: TextStyle(color: Colors.black45, fontWeight: FontWeight.bold, fontSize: 12)),
                  Row(
                    children: [
                      SizedBox(
                        width: 30.0,
                        height: 30.0,
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                          onPressed: () {},
                          icon: const Icon(Icons.star,
                              size: 12, color: Colors.orange),
                        ),
                      ),
                      Text(widget.car.displacement.toString(),
                          style: const TextStyle(
                              color: Colors.black26, fontSize: 12))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
