import 'package:flutter/material.dart';
import 'package:wiki_list/presentation/utils/colors.dart';

import '../../../../logic/bottom_sheet_launcher.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => customShowBottomSheet(context),
      child: Container(
        height: 55,
        width: 55,
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: secondaryColor.withOpacity(0.3),
              offset: const Offset(0, 10),
              blurRadius: 20,
              spreadRadius: 6,
            ),
          ],
        ),
        child: const Icon(
          Icons.add,
          color: offWhite,
          size: 35,
        ),
      ),
    );
  }
}
