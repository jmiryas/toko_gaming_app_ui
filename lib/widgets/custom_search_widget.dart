import 'package:flutter/material.dart';

class CustomSearchWidget extends StatelessWidget {
  const CustomSearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        // color: Colors.blue,
        height: 35.0,
        margin: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
        child: Row(
          children: [
            Expanded(
                child: TextField(
              cursorHeight: 20.0,
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                prefixIcon: const Icon(Icons.search, color: Colors.grey),
                contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
                hintText: "Search ...",
                hintStyle: const TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10.0)),
              ),
            )),
            const SizedBox(
              width: 20.0,
            ),
            Container(
              width: 35.0,
              height: 35.0,
              child: const Icon(Icons.filter_list),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(width: 1.0, color: Colors.grey.shade400)),
            )
          ],
        ),
      ),
    );
  }
}
