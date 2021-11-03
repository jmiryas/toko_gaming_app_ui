import 'package:flutter/material.dart';

class CustomHeaderWidget extends StatelessWidget {
  const CustomHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 35.0,
        // color: Colors.amber,
        margin: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
            const CircleAvatar(
              backgroundImage: AssetImage("images/profile.png"),
            )
          ],
        ),
      ),
    );
  }
}
