import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8,left: 8,right: 15),
              child: SvgPicture.asset(
                'assests/logo.svg',
                height: 50,
                width: 50,
              ),
            ),
            Expanded(
              child: Text(
                "DISCOVER",
                style: Theme.of(context).textTheme.headline4,
              ),
            )
          ],
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.message,
                color: Theme.of(context).primaryColor,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.person,
                color: Theme.of(context).primaryColor,
              ),
              onPressed: () {}),
        ]);
  }

  @override
  Size get preferredSize => Size.fromHeight(56.0);
}
