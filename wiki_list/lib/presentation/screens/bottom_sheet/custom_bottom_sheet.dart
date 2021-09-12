import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wiki_list/logic/channel_text_provider.dart';
import 'package:wiki_list/presentation/screens/bottom_sheet/widgets/widgets.dart';
import 'package:wiki_list/presentation/utils/constants.dart';

class CustomBottomSheet extends ConsumerWidget {
  const CustomBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final textProvider = watch(channelTextProvider);
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          left: defaultHPadding,
          right: defaultHPadding,
          top: defaultHPadding,
          bottom: MediaQuery.of(context).viewInsets.bottom + defaultHPadding,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const HeaderTitle(),
            const SizedBox(height: defaultHeight),
            CustomTextField(textProvider: textProvider),
            const SizedBox(height: defaultHeight),
            CustomFilledButton(textProvider: textProvider),
            const SizedBox(height: defaultHeight),
            const CustomOutlinedButton(),
            const SizedBox(height: defaultHeight),
            const DisclaimerTextWidget(),
          ],
        ),
      ),
    );
  }
}
