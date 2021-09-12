import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wiki_list/logic/channel_providers.dart';
import 'package:wiki_list/logic/channel_text_provider.dart';
import 'package:wiki_list/presentation/utils/utils.dart';

class CustomFilledButton extends StatelessWidget {
  const CustomFilledButton({
    Key? key,
    required this.textProvider,
  }) : super(key: key);

  final ChannelTextProvider textProvider;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: const Icon(Icons.add),
      label: const Text(createNewWiki),
      onPressed: () {
        if (textProvider.text.isNotEmpty) {
          context.read(channelListProvider).updateList(textProvider.text);
          Navigator.of(context).pop();
        }
      },
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(
            horizontal: 107,
            vertical: 10,
          ),
        ),
        backgroundColor: MaterialStateProperty.all(secondaryColor),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: const BorderSide(
              color: secondaryColor,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
