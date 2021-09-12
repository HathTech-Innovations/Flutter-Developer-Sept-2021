import 'package:flutter/material.dart';
import 'package:wiki_list/presentation/utils/colors.dart';

class CardModel {
  final String title;
  final IconData icon;
  final Color color;

  CardModel({
    required this.title,
    required this.icon,
    required this.color,
  });
}

final cardList = <CardModel>[
  CardModel(
    title: 'All wikis',
    icon: Icons.book,
    color: primaryColor,
  ),
  CardModel(
    title: 'My private notes',
    icon: Icons.lock,
    color: blue,
  ),
  CardModel(
    title: 'Bookmarked wikis',
    icon: Icons.bookmark,
    color: purple,
  ),
  CardModel(
    title: 'Templates',
    icon: Icons.pause_presentation,
    color: secondaryColor,
  ),
];
