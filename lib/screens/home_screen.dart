import 'package:flutter/material.dart';

import '../widgets/custom_header_widget.dart';
import '../widgets/custom_search_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomHeaderWidget(
            leftWidget: IconButton(
                onPressed: () {}, icon: const Icon(Icons.more_horiz)),
            rightWidget: const CircleAvatar(
              backgroundImage: AssetImage("images/profile.png"),
            ),
          ),
          // CustomSearchWidget(),
        ],
      ),
    );
  }
}
