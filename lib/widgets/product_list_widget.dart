import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

import '../models/product_model.dart';

class ProductListWidget extends StatelessWidget {
  const ProductListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _buildIconRate(int rate) {
      String rating = "";

      for (int i = 0; i < rate; i++) {
        rating += "⭐";
      }

      return rating;
    }

    var _formattedNumber = NumberFormat.compactCurrency(
      decimalDigits: 2,
      symbol: '',
    );

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          ProductModel product = ProductModel.products[index];

          return Card(
            margin: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            child: Container(
              height: 120,
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.amber.shade200,
                          borderRadius: BorderRadius.circular(15.0)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image(
                            fit: BoxFit.cover,
                            image: AssetImage(product.image)),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 130.0,
                              child: Text(
                                product.name,
                                softWrap: true,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.2),
                              ),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.favorite,
                                    color: Colors.grey))
                          ],
                        )),
                        const SizedBox(
                          height: 5.0,
                        ),
                        SizedBox(
                          width: 140.0,
                          child: Text(
                            product.category,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: const TextStyle(color: Colors.grey),
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Text(_buildIconRate(product.rating)),
                        Expanded(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Rp ${_formattedNumber.format(product.price)}",
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    elevation: 0.0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0))),
                                onPressed: () {},
                                child: const Text("Shop"))
                          ],
                        ))
                      ],
                    ))
                  ],
                ),
              ),
            ),
          );
        },
        childCount: ProductModel.products.length, // 1000 list items
      ),
    );
  }
}
