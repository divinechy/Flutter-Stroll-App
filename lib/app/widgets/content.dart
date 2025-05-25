// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:stroll_app/app/widgets/bottom_actions.dart';
import 'package:stroll_app/app/widgets/options.dart';
import 'package:stroll_app/app/widgets/profile.dart';

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Profile(),
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 16.0),
            child: Text(
              '"Mine is definitely the peace in the morning."',
              style: TextStyle(
                color: Colors.white.withOpacity(0.8),
                fontSize: 16,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 32),
          Options(),
          SizedBox(height: 24),
          BottomActions(),
        ],
      ),
    );
  }
}
