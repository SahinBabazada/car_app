import 'package:flutter/material.dart';

import '../screens/category_screen.dart';

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
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  CategoryCard(
                      title: 'Cadillac',
                      imageUrl:
                          'https://seeklogo.com/images/C/Cadillac-logo-C70039869E-seeklogo.com.png'),
                  CategoryCard(
                      title: 'Tesla',
                      imageUrl:
                          'https://e0.pxfuel.com/wallpapers/145/566/desktop-wallpaper-tesla-logo-on-black-a-tesla-logo-i-madetraced-from-origio-thumbnail.jpg'),
                  CategoryCard(
                      title: 'BMW',
                      imageUrl:
                          'https://1000logos.net/wp-content/uploads/2018/02/BMW-symbol.jpg'),
                  CategoryCard(
                    title: 'Mazda',
                    imageUrl:
                        'https://static.vecteezy.com/system/resources/previews/020/498/772/original/mazda-logo-symbol-brand-car-with-name-white-design-japan-automobile-illustration-with-black-background-free-vector.jpg',
                  ),
                  CategoryCard(
                      title: 'Mercedes',
                      imageUrl:
                          'https://i.pinimg.com/originals/7f/2a/81/7f2a817ea0d30ae47275d76476492994.jpg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title;
  final String imageUrl;

  const CategoryCard({
    super.key,
    required this.title,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  CategoryScreen(categoryName: title,)),
              );
            },
            child: CircleAvatar(
              foregroundImage: NetworkImage(imageUrl),
              radius: 30,
            ),
          ),
          Center(
            child: Text(title),
          )
        ],
      ),
    );
  }
}
