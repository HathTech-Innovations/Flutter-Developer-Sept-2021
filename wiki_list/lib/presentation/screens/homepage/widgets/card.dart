import 'package:flutter/material.dart';
import 'package:wiki_list/data/model/card_model.dart';
import 'package:wiki_list/presentation/utils/utils.dart';

class CustomCard extends StatelessWidget {
  final CardModel cardModel;
  const CustomCard({
    Key? key,
    required this.cardModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(defaultCircularRadius),
        color: cardModel.color,
      ),
      child: Stack(
        children: [
          _CardBackground(cardModel: cardModel),
          _CardForeground(cardModel: cardModel),
        ],
      ),
    );
  }
}

class _CardForeground extends StatelessWidget {
  const _CardForeground({
    Key? key,
    required this.cardModel,
  }) : super(key: key);

  final CardModel cardModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 22.0,
        top: 20,
        bottom: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            cardModel.icon,
            color: offWhite,
            size: defaultSmallIconSize,
          ),
          Text(
            cardModel.title,
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
    );
  }
}

class _CardBackground extends StatelessWidget {
  const _CardBackground({
    Key? key,
    required this.cardModel,
  }) : super(key: key);

  final CardModel cardModel;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      right: 4,
      child: Opacity(
        opacity: 0.1,
        child: Icon(
          cardModel.icon,
          size: defaultLargeIconSize,
          color: offWhite,
        ),
      ),
    );
  }
}
