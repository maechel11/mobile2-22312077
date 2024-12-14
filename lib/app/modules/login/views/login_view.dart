import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myapp/app/controllers/auth_controller.dart';
import 'package:myapp/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final cAuth = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Suggested code may be subject to a license. Learn more: ~LicenseLog:1683764363.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:4154788497.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:516228890.
      appBar: AppBar(
        title: const Text('LoginView'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: controller.cEmail,
              decoration: InputDecoration(labelText: 'email'),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: controller.cPass,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                cAuth.login(
                  controller.cEmail.text,
                  controller.cPass.text,
                );
              },
              child: const Text('Confirm'),
            ),
            const SizedBox(height: 10),
            // Suggested code may be subject to a license. Learn more: ~LicenseLog:130296503.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3623608230.
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Get.offAllNamed(Routes.RESET_PASSWORD);
                  },
                  child: Text('reset password?'),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Belum punya akun?'),
                TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.SIGNUP);
                  },
                  child: const Text('BUAT!!!'),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                cAuth.logout();
              },
              child: const Text('Login with google'),
            ),
          ],
        ),
      ),
    );
  }
}
