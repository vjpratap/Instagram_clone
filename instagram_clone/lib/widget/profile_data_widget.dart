import 'package:flutter/material.dart';

class ProfileDataWidget extends StatelessWidget {
  const ProfileDataWidget(
      {super.key, required this.valueCount, required this.valueText});

  final String valueCount;
  final String valueText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          valueCount,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Text(valueText, style: Theme.of(context).textTheme.bodyMedium)
      ],
    );
  }
}
