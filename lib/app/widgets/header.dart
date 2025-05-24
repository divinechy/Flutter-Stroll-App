// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

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
                color: Color(0xFFB3ADF6), 
                shadows: [
                  Shadow(
                    offset: Offset(2.0, 2.0),
                    blurRadius: 4.0,
                    color: Color(0xFFBEBEBE),
                  ),
                ],
              ),
            ),
            SizedBox(width: 8),
            Icon(Icons.keyboard_arrow_down, color: Color(0xFFB3ADF6), size: 28),
          ],
        ),
        SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.schedule, color: Colors.grey[400], size: 16),
            SizedBox(width: 4),
            Text(
              '22h 00m',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[400],
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(width: 12),
            Icon(Icons.person_outline, color: Colors.grey[400], size: 16),
            SizedBox(width: 4),
            Text(
              '103',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[400],
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
