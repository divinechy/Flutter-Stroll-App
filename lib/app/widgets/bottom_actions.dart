// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stroll_app/app/theme/svgs.dart';
import 'package:stroll_app/app/widgets/platform_svg.dart';

class BottomActions extends StatelessWidget {
  const BottomActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pick your option.',
              style: TextStyle(
                color: Color(0xFFE5E5E5),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              'See who has a similar mind.',
              style: TextStyle(
                color: Color(0xFFE5E5E5),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        Row(
          children: [
            PlatformSvg.asset(
              MIC,
              width: 56,
              height: 56,
            ).paddingOnly(right: 12),
            PlatformSvg.asset(
              FORWARD,
              width: 56,
              height: 56,
            ).paddingOnly(right: 4),
          ],
        ),
      ],
    );
  }
}
