import 'package:flutter/material.dart';

import 'constants.dart';

class CustomActionButton extends StatelessWidget {
  const CustomActionButton({
    super.key,
    required this.title,
    required this.icon,
    required this.doThis,
  });

  final String title;
  final IconData icon;
  final void Function()? doThis;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      child: IconButton(
        onPressed: doThis,
        style: ButtonStyle(
          enableFeedback: true,
          backgroundColor: WidgetStateProperty.all(kWhiteColor),
          elevation: WidgetStateProperty.all(5.0),
          alignment: Alignment.center,
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          ),
          padding: WidgetStateProperty.all(const EdgeInsets.all(10.0)),
        ),
        icon: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon, color: kPrimaryColor),
            SizedBox(height: 5),
            Flexible(
              child: Text(
                title,
                softWrap: false,
                overflow: TextOverflow.visible,
                textAlign: TextAlign.center,
                style: TextStyle(color: kPrimaryColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
