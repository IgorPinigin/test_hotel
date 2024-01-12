import 'package:flutter/material.dart';

class ApplicationDivider extends StatelessWidget {
  const ApplicationDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Divider(
        height: 1,
        indent: 38,
      ),
    );
  }
}
