import 'package:flutter/material.dart';
import 'package:wiki_list/presentation/utils/strings.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      Text(createNewWiki, style: Theme.of(context).textTheme.headline4);
}
