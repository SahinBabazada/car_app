import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String imageUrl;
  final Widget userName;
  final Widget text;
  final Icon actionIcon;

  @override
  final Size preferredSize;

  const CustomAppBar({
    super.key,
    required this.imageUrl,
    required this.userName,
    required this.text,
    required this.actionIcon,
  }) : preferredSize = const Size.fromHeight(80.0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: ListTile(
          leading: CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(imageUrl),
          ),
          title: text,
          subtitle: userName,
          trailing: IconButton.filled(
                      style:
                          IconButton.styleFrom(backgroundColor: Colors.white),
              onPressed: () {},
              icon: actionIcon),
        ),
      ),
    );
  }
}
