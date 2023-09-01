import 'package:car_app/models/car.dart';
import 'package:flutter/material.dart';

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    top: 1,
                    left: 1,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.heart_broken,
                          size: 16, color: Colors.red),
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    width: 100,
                    child: Text(
                      // ignore: prefer_interpolation_to_compose_strings
                      widget.car.make + " " + widget.car.model,
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 12),
                      overflow: TextOverflow.ellipsis,
                    )),
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
            const Text("\$ 12",
                style: TextStyle(color: Colors.black45, fontSize: 12))
          ],
        ),
      ),
    );
  }
}
