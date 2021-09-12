import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final channelListProvider =
    ChangeNotifierProvider<ChannelProvider>((ref) => ChannelProvider());

class ChannelProvider with ChangeNotifier {
  List<String> channelList = [
    'Trixio 2.0',
    'Project Grail',
    'Fun Facts',
  ];

  String currentChannel = "Trixio 2.0";

  void updateList(final String channel) {
    channelList.add(channel);
    notifyListeners();
  }

  void updateCurrentChannel(String str) {
    currentChannel = str;
    notifyListeners();
  }
}
