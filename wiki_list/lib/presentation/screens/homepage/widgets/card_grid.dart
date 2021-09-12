import 'package:flutter/material.dart';
import 'package:wiki_list/data/model/card_model.dart';
import 'package:wiki_list/presentation/screens/homepage/widgets/widgets.dart';
import 'package:wiki_list/presentation/utils/utils.dart';

class CardGrid extends StatelessWidget {
  const CardGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      crossAxisSpacing: defaultAxisSpacing,
      mainAxisSpacing: defaultAxisSpacing,
      childAspectRatio: 16 / 9,
      children: cardList
          .map(
            (model) => GestureDetector(
              onTap: () => debugPrint('${model.title} Pressed'),
              child: CustomCard(cardModel: model),
            ),
          )
          .toList(),
    );
  }
}
