import 'package:flutter/material.dart';
import 'package:wiki_list/presentation/screens/homepage/widgets/widgets.dart';
import 'package:wiki_list/presentation/utils/utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: offWhite,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: defaultHPadding,
            vertical: defaultVPadding,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                NavigationRow(),
                SizedBox(height: defaultHeight),
                HeaderTitle(),
                SizedBox(height: defaultHeight),
                CardGrid(),
                SizedBox(height: defaultHeight),
                UsersListWidget(),
                SizedBox(height: defaultHeight),
                ChannelListWidget(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavbar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const CustomFloatingActionButton(),
    );
  }
}
