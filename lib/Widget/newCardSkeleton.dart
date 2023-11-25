import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewCardSkeleton extends StatelessWidget {
  const NewCardSkeleton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Skeleton(
          height: 120,
          weight: 120,
        ),
        Expanded(
            child: Column(
          children: const [
            Skeleton(
              height: 13,
              weight: 160,
            ),
            SizedBox(
              height: 8,
            ),
            Skeleton(
              height: 13,
              weight: 160,
            ),
            SizedBox(
              height: 8,
            ),
            Skeleton(
              height: 13,
              weight: 160,
            ),
          ],
        ))
      ],
    );
  }
}

class Skeleton extends StatelessWidget {
  const Skeleton({
    Key? key,
    this.height,
    this.weight,
  }) : super(key: key);
  final double? height, weight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: weight,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.04),
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
    );
  }
}
