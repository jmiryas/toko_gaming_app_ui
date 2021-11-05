import 'package:flutter/material.dart';

import '../models/product_model.dart';

class ProductCategoryWidget extends StatefulWidget {
  const ProductCategoryWidget({Key? key}) : super(key: key);

  @override
  State<ProductCategoryWidget> createState() => _ProductCategoryWidgetState();
}

class _ProductCategoryWidgetState extends State<ProductCategoryWidget> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 60.0,
        // color: Colors.amber,
        margin: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Our Products",
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: ProductModel.productCategories.length,
                    itemBuilder: (context, index) {
                      String category = ProductModel.productCategories[index];

                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                        child: Container(
                          height: 30.0,
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Center(
                            child: Text(category),
                          ),
                          margin: const EdgeInsets.only(right: 10.0),
                          decoration: currentIndex == index
                              ? BoxDecoration(
                                  color: Colors.blue.shade100,
                                  border: Border.all(
                                      width: 2.0, color: Colors.blue.shade300),
                                  borderRadius: BorderRadius.circular(30.0))
                              : BoxDecoration(
                                  color: Colors.grey.shade100,
                                  border: Border.all(
                                      width: 2.0, color: Colors.grey.shade300),
                                  borderRadius: BorderRadius.circular(30.0)),
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
