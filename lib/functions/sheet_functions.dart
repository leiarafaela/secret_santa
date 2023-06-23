import 'package:flutter/material.dart';
import 'package:fleasy/fleasy.dart';

Future<void> openSheet({
  required BuildContext context,
  required Widget sheet,
  double? height,
  isDimissible = true,
}) async {
  return showModalBottomSheet(
    context: context,
    constraints: BoxConstraints(
      maxHeight: MediaQuery.of(context).size.height - 32,
    ),
    isScrollControlled: true,
    isDismissible: isDimissible,
    enableDrag: isDimissible,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(16),
      ),
    ),
    builder: (BuildContext context) {
      return Wrap(
        children: [
          SizedBox(
            height: context.screenHeight * 0.90,
            child: sheet,
          ),
        ],
      );
    },
  );
}
