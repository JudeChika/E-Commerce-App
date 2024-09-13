import 'package:e_commerce_application/data/repositories/authentication/authentication_repository.dart';
import 'package:e_commerce_application/data/repositories/user/user_repository.dart';
import 'package:e_commerce_application/features/authetication/screens/signup/verify_email.dart';
import 'package:e_commerce_application/utils/constants/image_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../utils/popups/loaders.dart';
import '../../../../data/repositories/user/user_model.dart';
import '../../../../utils/network manager/network_manager.dart';
import '../../../../utils/popups/full_screen_loader.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  /// Variables
  final hidePassword = true.obs; // Observable for hiding/showing password
  final privacyPolicy = true.obs; // Observable for hiding/showing password
  final email = TextEditingController(); // Controller for email input
  final lastName = TextEditingController(); // Controller for last name input
  final username = TextEditingController(); // Controller for username input
  final password = TextEditingController(); // Controller for password input
  final firstName = TextEditingController(); // Controller for first name input
  final phoneNumber = TextEditingController(); // Controller for phone number input
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>(); // Form key for form validation


  /// SIGNUP
  void signup() async {
    try {
      // Start Loading
      TFullScreenLoader.openLoadingDialog("We are processing your information...", TImages.docerAnimation);

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        // Remove Loader
        TFullScreenLoader.stopLoading();
        return;
      }

      // Form Validation
      if (!signupFormKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return;
      }

        // Privacy Policy Check
        if (!privacyPolicy.value) {
          TLoaders.warningSnackBar(
            title: "Accept Privacy Policy",
            message: "In order to create account, you must have to read and accept the Privacy Policy & Terms of Use.",
          );
          return;
        }

        // Register User in the Firebase Authentication & Save use data in the Firebase
        final userCredential = await AuthenticationRepository.instance.registerWithEmailAndPassword(email.text.trim(), password.text.trim());

        // Save Authenticated user data in the Firebase Firestore
        final newUser = UserModel(
          id: userCredential.user!.uid,
          firstName: firstName.text.trim(),
          lastName: lastName.text.trim(),
          username: username.text.trim(),
          email: email.text.trim(),
          phoneNumber: phoneNumber.text.trim(),
          profilePicture: " ",
        );

        final userRepository = Get.put(UserRepository());
        await userRepository.saveUserRecord(newUser);

        // Remove Loader
        TFullScreenLoader.stopLoading();

        // Show Success Message
        TLoaders.successSnackBar(title: "Congratulations", message: "Your account has been created! Verify email to continue.");

        // Move to Verify Email Screen
        Get.to(() => VerifyEmailScreen(email: email.text.trim()));
      } catch (e) {
      // Remove Loader
      TFullScreenLoader.stopLoading();

      // SHow some Generic Error to the user
      TLoaders.errorSnackBar(title: "Oh Snap!", message: e.toString());
    }
  }

}