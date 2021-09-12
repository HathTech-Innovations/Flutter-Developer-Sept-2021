import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wiki_list/logic/channel_providers.dart';
import 'package:wiki_list/presentation/utils/utils.dart';

import '../../../../logic/bottom_sheet_launcher.dart';

class ChannelListWidget extends ConsumerWidget {
  const ChannelListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final channelList = watch(channelListProvider).channelList;
    final _selectedChannel = watch(channelListProvider).currentChannel;

    return Column(
      children: [
        Row(
          children: [
            Text(
              channelsOrGroups,
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(width: defaultWidth),
            Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                color: secondaryColor.withOpacity(deafaultOpacity),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: () => customShowBottomSheet(context),
                icon: const Icon(
                  Icons.add,
                  color: secondaryColor,
                  size: defaultSmallIconSize,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 139,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return RadioListTile<String>(
                activeColor: primaryColor,
                contentPadding: EdgeInsets.zero,
                value: channelList[index],
                title: Text(
                  channelList[index],
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                groupValue: _selectedChannel,
                onChanged: (value) {
                  watch(channelListProvider).updateCurrentChannel(value!);
                },
                secondary: IconButton(
                  icon: const Icon(Icons.more_vert_rounded),
                  onPressed: () =>
                      debugPrint('Options Pressed at index: $index'),
                ),
              );
            },
            itemCount: channelList.length,
          ),
        ),
      ],
    );
  }
}
