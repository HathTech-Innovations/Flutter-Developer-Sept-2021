import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wiki_list/presentation/utils/constants.dart';

import '../presentation/screens/bottom_sheet/custom_bottom_sheet.dart';

Future customShowBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
        defaultCircularRadius,
      ),
    ),
    isScrollControlled: true,
    builder: (context) => BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
      child: const CustomBottomSheet(),
    ),
  );
}
