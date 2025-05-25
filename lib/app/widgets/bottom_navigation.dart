// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:stroll_app/app/theme/svgs.dart';
import 'package:stroll_app/app/widgets/platform_svg.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.095,
      decoration: BoxDecoration(
        color: const Color(0xFF101115),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            blurRadius: 20,
            spreadRadius: 2,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          PlatformSvg.asset(CARDS, width: 30, height: 30),
          PlatformSvg.asset(FIRE, width: 40, height: 40),
          PlatformSvg.asset(CHAT, width: 40, height: 40),
          PlatformSvg.asset(USER, width: 40, height: 40),
        ],
      ),
    );
  }
}
