import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final channelTextProvider =
    ChangeNotifierProvider<ChannelTextProvider>((ref) => ChannelTextProvider());

class ChannelTextProvider with ChangeNotifier {
  String text = "";

  void updateAndSendText(String str) {
    text = str;
    notifyListeners();
  }
}
