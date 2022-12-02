import 'package:flutter/material.dart';
class MyAppBar extends StatelessWidget  implements PreferredSizeWidget {
  const MyAppBar ({Key? key,required this.title}): super(key:key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 66,
      leading: Padding(
        padding: const EdgeInsetsDirectional.only(start: 26.8),
        child: Image.asset(
          "assets/icons/arrow_back.jpg",
          height: 18.61,
          width: 27.44,
        ),
      ),
      title: Text(title),
      actions: [
        Padding(
            padding:const EdgeInsetsDirectional.only(end:18),
    child: Image.asset(
    "assets/icons/filter.jpg",
    height: 20.8,
    width: 23.13,
    ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(72);

}
