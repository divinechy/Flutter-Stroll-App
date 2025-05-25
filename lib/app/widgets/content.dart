// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stroll_app/app/widgets/bottom_actions.dart';
import 'package:stroll_app/app/widgets/options.dart';
import 'package:stroll_app/app/widgets/profile.dart';

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.fromLTRB(16, media.height * 0.35, 16, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Profile(),
          Padding(
            padding: const EdgeInsets.only(left: 32.0, bottom: 16.0),
            child: Text(
              '"Mine is definitely the peace in the morning."',
              style: TextStyle(
                color: Color(0xFFCBC9FF),
                fontSize: 14,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Options().paddingOnly(bottom: 20.0),
          BottomActions(),
        ],
      ),
    );
  }
}
