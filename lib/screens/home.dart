import 'package:car_app/widgets/car_gridview_widget.dart';
import 'package:car_app/widgets/search_bar_widget.dart';
import 'package:flutter/material.dart';
import '../widgets/categories_widet.dart';

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
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: ListTile(
                leading: const CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfiqaMAvuRhCaJdP2nm4G0sF2svkxNOkgiKQ&usqp=CAU"),
                ),
                title: const Text(
                  "Welcome",
                  style: TextStyle(color: Colors.black38, fontSize: 12),
                ),
                subtitle: const Text(
                  "Shahinur Rahman",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_active_outlined,
                      color: Colors.black,
                    )),
              ),
            ),
            const SearchBarWidget(),
            const CategoriesSliderWidget(),
            const CarGridViewWidget()
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: Colors.black),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.house, color: Colors.white)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.heart_broken)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.shopping_basket)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
