import 'package:flutter/material.dart';

import '../widgets/custom_header_widget.dart';
import '../widgets/custom_search_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomHeaderWidget(),
          CustomSearchWidget(),
        ],
      ),
    );
  }
}
