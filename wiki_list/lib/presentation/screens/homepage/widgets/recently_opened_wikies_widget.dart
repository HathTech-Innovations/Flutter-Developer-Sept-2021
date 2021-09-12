import 'package:flutter/material.dart';
import 'package:wiki_list/presentation/screens/homepage/widgets/user_tile.dart';
import 'package:wiki_list/presentation/utils/strings.dart';


class UsersListWidget extends StatelessWidget {
  const UsersListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          recentlyOpenedWikies,
          style: Theme.of(context).textTheme.headline6,
        ),
        ...List<UserTile>.generate(
          dataList.length,
          (index) => UserTile(text: dataList[index]),
        ),
      ],
    );
  }
}
