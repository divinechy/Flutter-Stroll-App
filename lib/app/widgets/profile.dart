import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';
import 'package:stroll_app/app/modules/landing/landing_controller.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;

    final LandingController controller = Get.find<LandingController>();

    return Obx(() {
      if (controller.isLoading.value) {
        return Center(child: CircularProgressIndicator(color: Colors.white));
      }
      return SizedBox(
        height: media.height * 0.10,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: media.width * 0.16,
              height: media.height * 0.07,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(controller.currentUser.value!.avatarUrl),
                  fit: BoxFit.cover,
                ),
                border: Border.all(color: Colors.black, width: 2),
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '${controller.currentUser.value!.name}, ${Jiffy.parseFromDateTime(DateTime.now()).diff(Jiffy.parse(controller.currentUser.value!.dob), unit: Unit.year)}',
                    style: TextStyle(
                      color: Color(0xFFF5F5F5),
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  SizedBox(height: 4),
                  Text(
                    controller.currentUser.value!.question,
                    style: TextStyle(
                      color: Color(0xFFF5F5F5),
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      height: 1.2,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    softWrap: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
