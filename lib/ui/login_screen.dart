import 'package:exam_management/themes/static_theme_management.dart';
import 'package:exam_management/ui/signup_screen.dart';
import 'package:exam_management/widgets/coustom_social_login_button.dart';
import 'package:exam_management/widgets/coustom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/gestures.dart';

import '../../../widgets/coustom_signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isLoading =false;
  @override
  Widget build(BuildContext context) {
    final Width = MediaQuery.of(context).size.width;
    final finalWidth = Width / 2 - 38;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Welcome back !",
            style: AppTextStyles.headline.copyWith(color: AppColors.kprimary),
          ),
          Text(
            "Manage your exams",
            style: AppTextStyles.description,
          ),
          const SizedBox(height: 40),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.0),
            child: CustomTextField(
              labelText: "Username",
              hintText: "Enter your username",
              prefixIcon: Icons.person,
              obscureText: false,
            ),
          ),
          SizedBox(
            height: 20,
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.0),
            child: CustomTextField(
              labelText: "Password",
              hintText: "Enter your password",
              prefixIcon: Icons.lock,
              obscureText: true,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          //submit button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: CustomLoginButton(
              isLoading: isLoading,
              text: "Login",
              onPressed: () {
                
              },
            ),
          ),

          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 1.5,
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "Continue as",
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.kprimary,
                    ),
                  ),
                ),
                Expanded(
                  child: Divider(
                    thickness: 1.5,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SocialLoginButton(
                  finalWidth: finalWidth,
                  icon: FontAwesomeIcons.google,
                  text: "Google",
                  onTap: () {},
                ),
                SocialLoginButton(
                  finalWidth: finalWidth,
                  icon: FontAwesomeIcons.mobile,
                  text: "Mobile",
                  onTap: () {},
                ),
              ],
            ),
          ),

          InkWell(
            onTap: () {},
            child: RichText(
              text: TextSpan(
                text: "Don't have an account? ",
                style:
                    AppTextStyles.subtitle.copyWith(color: AppColors.ksurface),
                children: [
                  TextSpan(
                    text: "Sign up",
                    style: AppTextStyles.subtitle.copyWith(
                      color:
                          AppColors.kprimary, 
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignupScreen(),
                          ),
                        );
                      },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
