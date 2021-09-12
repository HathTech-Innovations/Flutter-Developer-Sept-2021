import 'package:flutter/material.dart';
import 'package:wiki_list/presentation/utils/constants.dart';

class UserTile extends StatelessWidget {
  final String text;
  const UserTile({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: GestureDetector(
        onTap: () => debugPrint('$text Pressed'),
        child: Row(
          children: [
            const CircleAvatar(maxRadius: defaultCircularRadius),
            const SizedBox(width: defaultWidth),
            Text(
              text,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}
