import 'package:car_app/widgets/car_card_widget.dart';
import 'package:flutter/material.dart';

import '../services/get_cars.dart';

class CarGridViewWidget extends StatelessWidget {
  const CarGridViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Popular Cars",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "View all",
                  style: TextStyle(
                      color: Color.fromRGBO(46, 163, 102, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
          FutureBuilder(
              future: getCars("merc", limit: 10),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(
                      color: Color.fromRGBO(21, 153, 84, 1),
                      backgroundColor: Colors.white,
                    ),
                  );
                }
                if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else if (!snapshot.hasData) {
                  return const Text('Data not found');
                }

                return GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: snapshot.data!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CarCardWidget(car: snapshot.data![index]);
                  },
                );
              }),
        ],
      ),
    );
  }
}