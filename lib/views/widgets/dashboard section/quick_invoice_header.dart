import 'package:flutter/material.dart';
import 'package:resposive_learn/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Quick Invoice", style: AppStyles.styleSemiBold20(context)),
        Container(
          width: 48,
          height: 48,
          decoration: const ShapeDecoration(
            shape: OvalBorder(),
            color: Color(0xfffafafa),
          ),
          child: const Icon(Icons.add, color: Color(0xff4EB7F2)),
        ),
      ],
    );
  }
}
