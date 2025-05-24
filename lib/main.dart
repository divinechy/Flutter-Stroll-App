import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stroll_app/app/routes/pages.dart';
import 'package:stroll_app/root_bindings.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.landing,
      themeMode: ThemeMode.dark,
      title: 'Stroll App',
      smartManagement: SmartManagement.onlyBuilder,
      getPages: Pages.routes,
      initialBinding: RootBindings()
    ),
  );
}
