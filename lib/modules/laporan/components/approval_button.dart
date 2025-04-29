import 'package:flutter/material.dart';
import 'package:strategi_hub_app/constant/colors_constant.dart';
import 'package:strategi_hub_app/constant/sizes_constant.dart';

class ApprovalButton extends StatelessWidget {
  final Function() onApprove;
  final Function() onReject;
  const ApprovalButton(
      {super.key, required this.onApprove, required this.onReject});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: onApprove,
          child: Container(
            decoration: BoxDecoration(
                color: AppColors.lightInfoColor,
                borderRadius: BorderRadius.circular(Sizes.s50)),
            padding: EdgeInsets.all(Sizes.s8),
            child: Icon(
              Icons.check,
              size: Sizes.s18,
            ),
          ),
        ),
        SizedBox(width: Sizes.s4),
        GestureDetector(
          onTap: onReject,
          child: Container(
            decoration: BoxDecoration(
                color: AppColors.lightInfoColor,
                borderRadius: BorderRadius.circular(Sizes.s50)),
            padding: EdgeInsets.all(Sizes.s8),
            child: Icon(
              Icons.close,
              size: Sizes.s18,
            ),
          ),
        ),
      ],
    );
  }
}
