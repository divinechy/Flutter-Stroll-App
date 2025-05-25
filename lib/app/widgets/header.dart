// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stroll_app/app/theme/svgs.dart';
import 'package:stroll_app/app/widgets/platform_svg.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Stroll Bonfire',
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w700,
                color: Color(0xFFB3ADF4),
                shadows: [
                  Shadow(
                    offset: Offset(1.0, 1.0),
                    blurRadius: 2.0,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0, top: 8.0),
              child: Icon(
                Icons.keyboard_arrow_down,
                color: Color(0xFFB3ADF6),
                size: 28,
                shadows: [
                  Shadow(
                    offset: Offset(1.0, 0.0),
                    blurRadius: 1.0,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PlatformSvg.asset(WATCH, width: 15, height: 15, color: Colors.white).paddingOnly(right: 4),
            Text(
              '22h 00m',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(width: 12),
            PlatformSvg.asset(SMALL, width: 15, height: 15, color: Colors.white).paddingOnly(right: 4),
            Text(
              '103',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
