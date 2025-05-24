import 'package:get/get.dart';
import 'package:stroll_app/app/modules/landing/landing_binding.dart';
import 'package:stroll_app/app/modules/landing/landing_view.dart';

part 'routes.dart';

class Pages {
  Pages._();

  static const initial = Routes.landing;

  static final routes = [
    GetPage(
      name: Routes.landing,
      page: () => LandingView(),
      binding: LandingBinding(),
    ),
  ];
}
