import 'package:flutter/material.dart';
import 'package:wiki_list/presentation/utils/constants.dart';

class NavigationRow extends StatelessWidget {
  const NavigationRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () => debugPrint('Menu Pressed'),
          padding: EdgeInsets.zero,
          icon: const Icon(
            Icons.short_text_rounded,
            size: defaultIconSize,
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () => debugPrint('Profile Pressed'),
          child: const CircleAvatar(),
        ),
      ],
    );
  }
}
