import 'package:flutter/material.dart';
import 'package:wiki_list/logic/channel_text_provider.dart';
import 'package:wiki_list/presentation/utils/colors.dart';
import 'package:wiki_list/presentation/utils/strings.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.textProvider,
  }) : super(key: key);

  final ChannelTextProvider textProvider;

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      onChanged: (value) => textProvider.updateAndSendText(value),
      decoration: InputDecoration(
        hintText: hintText,
        alignLabelWithHint: true,
        hintStyle: Theme.of(context).textTheme.bodyText1?.copyWith(color: grey),
      ),
    );
  }
}
