import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';



Shimmer shimmerLoading() {
  return Shimmer.fromColors(
      baseColor: Colors.grey.withOpacity(0.50),
      highlightColor: Colors.white.withOpacity(0.6),
      direction: ShimmerDirection.ttb,
      period: const Duration(seconds: 2),
      child: SizedBox(
        height: double.infinity,
        child: ListView.builder(
          itemCount: 6,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 26,
                    child: Shimmer.fromColors(
                      baseColor: Colors.grey.withOpacity(0.50),
                      highlightColor: Colors.white.withOpacity(0.6),
                      period: const Duration(seconds: 2),
                      child: Container(
                        height: 100,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.grey.withOpacity(0.50),
                        ),
                      ),
                    ),
                  ),
                  const Expanded(flex: 3, child: Text('')),
                  Expanded(
                    flex: 70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Shimmer.fromColors(
                          baseColor: Colors.grey.withOpacity(0.50),
                          highlightColor: Colors.white.withOpacity(0.6),
                          period: const Duration(seconds: 2),
                          child: Container(
                            width: 220,
                            height: 16,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.grey.withOpacity(0.50),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Shimmer.fromColors(
                          baseColor: Colors.grey.withOpacity(0.50),
                          highlightColor: Colors.white.withOpacity(0.6),
                          period: const Duration(seconds: 2),
                          child: Container(
                            width: 150,
                            height: 16,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.grey.withOpacity(0.50),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            Expanded(
                                flex: 30,
                                child: Shimmer.fromColors(
                                    baseColor: Colors.grey.withOpacity(0.50),
                                    highlightColor:
                                        Colors.white.withOpacity(0.6),
                                    period: const Duration(seconds: 2),
                                    child: Container(
                                      width: 120,
                                      height: 16,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        color: Colors.grey.withOpacity(0.50),
                                      ),
                                    ))),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ));
}
