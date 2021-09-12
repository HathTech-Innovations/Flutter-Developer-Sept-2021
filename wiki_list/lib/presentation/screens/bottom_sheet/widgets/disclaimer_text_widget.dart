import 'package:flutter/material.dart';
import 'package:wiki_list/presentation/utils/colors.dart';
import 'package:wiki_list/presentation/utils/strings.dart';

class DisclaimerTextWidget extends StatelessWidget {
  const DisclaimerTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      disclaimer,
      textAlign: TextAlign.center,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: Theme.of(context).textTheme.button?.copyWith(
            color: grey,
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
    );
  }
}
