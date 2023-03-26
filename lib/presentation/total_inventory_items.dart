import 'package:flutter/material.dart';

import '../../data/data_file.dart';

class TotalInventoryItems extends StatelessWidget {
  const TotalInventoryItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: 700,
        height: MediaQuery.of(context).size.height,
        child: GridView.builder(
          itemCount: statistics.length,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisExtent: 200,
              mainAxisSpacing: 17,
              childAspectRatio: 2.0),
          itemBuilder: (context, index) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromRGBO(255, 127, 118, 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 20),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            statistics[index].title,
                            maxLines: 2,
                            softWrap: true,
                            style: const TextStyle(
                              fontSize: 17,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 40,
                                width: 7,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                              Text(
                                statistics[index].number,
                                style: const TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
