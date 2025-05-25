// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stroll_app/app/modules/landing/landing_controller.dart';

class OptionButton extends StatelessWidget {
  final String letter;
  final String text;

  const OptionButton({super.key, required this.letter, required this.text});

  @override
  Widget build(BuildContext context) {
    final LandingController controller = Get.find<LandingController>();
    return Obx(() {
      bool isSelected = controller.selectedOption.value == letter;

      return GestureDetector(
        onTap: () => controller.selectOption(letter),
        child: Container(
          height: 64,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: const Color(0xFF232A2E),
            borderRadius: BorderRadius.circular(12),
            border:
                isSelected
                    ? Border.all(color: const Color(0xFFB8A5E3), width: 2)
                    : null,
          ),
          child: Row(
            children: [
              Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color:
                      isSelected
                          ? const Color(0xFF8B88EF)
                          : const Color(0xFF232A2E),
                  border:
                      isSelected
                          ? null
                          : Border.all(color: Colors.white, width: 2),
                ),
                child: Center(
                  child: Text(
                    letter,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    height: 1.3,
                  ),
                  maxLines: 2, // Limit to 2 lines
                  overflow: TextOverflow.ellipsis, // Handle overflow
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
