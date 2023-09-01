import 'package:car_app/widgets/car_gridview_widget.dart';
import 'package:car_app/widgets/search_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ionicons/ionicons.dart';
import 'package:line_icons/line_icons.dart';
import '../widgets/categories_widet.dart';
import '../widgets/custom_app_bar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: const CustomAppBar(
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfiqaMAvuRhCaJdP2nm4G0sF2svkxNOkgiKQ&usqp=CAU',
        userName: Text(
          "Shahinur Rahman",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        text: Text(
          "Welcome",
          style: TextStyle(color: Colors.black38, fontSize: 12),
        ),
        actionIcon: Icon(
          Ionicons.notifications_outline,
          color: Colors.black,
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SearchBarWidget(),
            CategoriesSliderWidget(),
            CarGridViewWidget(
              carName: "merc",
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: const Color.fromRGBO(34, 38, 43, 1)),
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
            IconButton(
                onPressed: () {},
                icon:
                    const Icon(Ionicons.heart_outline, color: Colors.white54)),
            IconButton(
                onPressed: () {},
                icon: const FaIcon(FontAwesomeIcons.bagShopping,
                    color: Colors.white54)),
            IconButton(
                onPressed: () {},
                icon: const Icon(LineIcons.cog, color: Colors.white54)),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
