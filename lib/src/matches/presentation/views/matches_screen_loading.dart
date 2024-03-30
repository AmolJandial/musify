import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MatchesScreenLoading extends StatelessWidget {
  const MatchesScreenLoading({super.key});

  @override
  Widget build(BuildContext context) {
    final Widget roundedShimmer = Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        width: 70,
        height: 70,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey,
        ),
      ),
    );

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Shimmer.fromColors(
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.grey[100]!,
              child: Container(
                height: 100,
                color: Colors.grey,
                margin: const EdgeInsets.symmetric(
                  vertical: 32,
                  horizontal: 24,
                ),
              ),
            ),
            Expanded(
              child: Shimmer.fromColors(
                baseColor: Colors.grey[300]!,
                highlightColor: Colors.grey[100]!,
                child: Card(
                  margin: const EdgeInsets.symmetric(horizontal: 32),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                  ),
                  child: Container(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  roundedShimmer,
                  roundedShimmer,
                  roundedShimmer,
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
