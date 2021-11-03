import 'package:flutter/material.dart';

class CustomHeaderWidget extends StatelessWidget {
  final Widget leftWidget;
  final Widget rightWidget;

  const CustomHeaderWidget(
      {Key? key, required this.leftWidget, required this.rightWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 35.0,
        // color: Colors.amber,
        margin: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [leftWidget, rightWidget],
        ),
      ),
    );
  }
}
