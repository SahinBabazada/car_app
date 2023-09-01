import 'package:flutter/material.dart';

class CategoriesSliderWidget extends StatelessWidget {
  const CategoriesSliderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12.0, 12.0, 0, 12.0),
        child: Row(
          children: [
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDibtLN8YhBKW6NIolWsShADwLDY2X72K7VQ&usqp=CAU",
                              width: 75,
                              height: 75,
                              fit: BoxFit.cover,
                            ),
                            const Center(
                              child: Text("category name"),
                            )
                          ],
                        )),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
