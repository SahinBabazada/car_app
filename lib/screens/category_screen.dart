import 'package:car_app/screens/home.dart';
import 'package:car_app/widgets/car_gridview_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ionicons/ionicons.dart';
import 'package:line_icons/line_icons.dart';
import '../widgets/categories_widet.dart';

class CategoryScreen extends StatefulWidget {
  final String categoryName;
  const CategoryScreen({super.key, required this.categoryName});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: const Size(double.maxFinite, 10), child: Container(),),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            const CategoriesSliderWidget(),
            CarGridViewWidget(carName: widget.categoryName)
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: const Color.fromRGBO(34, 38, 43, 1)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
                icon:
                    const FaIcon(FontAwesomeIcons.house, color: Colors.white)),
            IconButton(onPressed: () {}, icon: const Icon(Ionicons.heart_outline, color: Colors.white54)),
            IconButton(onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.bagShopping, color: Colors.white54 )),
            IconButton(onPressed: () {}, icon: const Icon(LineIcons.cog, color: Colors.white54)),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
