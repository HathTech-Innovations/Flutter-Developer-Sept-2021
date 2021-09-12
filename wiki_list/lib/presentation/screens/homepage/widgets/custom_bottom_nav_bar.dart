import 'package:flutter/material.dart';
import 'package:wiki_list/presentation/utils/utils.dart';

class CustomBottomNavbar extends StatelessWidget {
  const CustomBottomNavbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(defaultCircularRadius),
        topRight: Radius.circular(defaultCircularRadius),
      ),
      child: BottomNavigationBar(
        iconSize: 30,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: primaryColor.withOpacity(deafaultOpacity),
                borderRadius: BorderRadius.circular(defaultCircularRadius),
              ),
              child: const Icon(
                Icons.home_outlined,
                color: primaryColor,
              ),
            ),
            label: home,
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: grey.withOpacity(deafaultOpacity),
                borderRadius: BorderRadius.circular(defaultCircularRadius),
              ),
              child: const Icon(
                Icons.messenger_outline_rounded,
                color: grey,
              ),
            ),
            label: messages,
          ),
        ],
        onTap: (index) {
          debugPrint('Bottom NavigationBar Item at $index pressed');
        },
      ),
    );
  }
}
