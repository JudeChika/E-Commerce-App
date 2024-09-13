import 'package:e_commerce_application/bindings/general_bindings.dart';
import 'package:e_commerce_application/routes/app_routes.dart';
import 'package:e_commerce_application/utils/constants/colors.dart';
import 'package:e_commerce_application/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// Use this Class to set up themes, initial Bindings, any imitations and much more
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      // will automatically detect the app theme and apply it to the system
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      initialBinding: GeneralBindings(),
      getPages: AppRoutes.pages,

      /// show Loader or Circular Progress Indicator meanwhile Authentication Repository is deciding to show relevant screen.
      home: const Scaffold(
          backgroundColor: TColors.primary,
          body: Center(child: CircularProgressIndicator(color: Colors.white))),
    );
  }
}
