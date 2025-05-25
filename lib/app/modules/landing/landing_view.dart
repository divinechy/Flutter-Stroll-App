// ignore_for_file: deprecated_member_use, unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stroll_app/app/theme/images.dart';
import 'package:stroll_app/app/widgets/bottom_navigation.dart';
import 'package:stroll_app/app/widgets/content.dart';
import 'package:stroll_app/app/widgets/header.dart';
import 'landing_controller.dart';

class LandingView extends GetView<LandingController> {
  const LandingView({super.key});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    final LandingController controller = Get.find<LandingController>();

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white, Color(0xFF090B0D), Color(0xFF101115)],
            stops: [0.0, 0.6, 1.0],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: media.height * 0.55,
              child: ShaderMask(
                shaderCallback: (Rect bounds) {
                  return const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black, Colors.transparent],
                    stops: [0.5, 1.0], // Start fading from halfway
                  ).createShader(bounds);
                },
                blendMode: BlendMode.dstIn, // Keeps image, applies transparency
                child: Image.asset(BACKGROUND, fit: BoxFit.cover),
              ),
            ),

            SafeArea(
              child: Column(
                children: [
                  SizedBox(height: media.height * 0.03),
                  Header(),
                  Content(),
                ],
              ),
            ),
            Positioned(bottom: 0, left: 0, right: 0, child: BottomNavigation()),
          ],
        ),
      ),
    );
  }
}
