import 'package:exam_management/ui/login_screen.dart';
import 'package:exam_management/ui/registration_selection_module.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../themes/static_theme_management.dart';
import '../widgets/coustom_signup_screen.dart';
import '../widgets/coustom_textfield.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLoading = false;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Sign Up!",
            style: AppTextStyles.headline.copyWith(color: AppColors.kprimary),
          ),
          Text(
            "Create new account",
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
            height: 20,
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.0),
            child: CustomTextField(
              labelText: "Confirm Password",
              hintText: "Enter your password",
              prefixIcon: Icons.lock,
              obscureText: true,
            ),
          ),
          SizedBox(
            height: 20,
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.0),
            child: CustomTextField(
              labelText: "First Name",
              hintText: "First Name",
              prefixIcon: Icons.person_2,
              obscureText: false,
            ),
          ),
          SizedBox(
            height: 20,
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.0),
            child: CustomTextField(
              labelText: "Last Name",
              hintText: "Last Name",
              prefixIcon: Icons.person_2,
              obscureText: false,
            ),
          ),
          SizedBox(
            height: 20,
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.0),
            child: CustomTextField(
              labelText: "Mobile Number",
              hintText: "Enter your number",
              prefixIcon: Icons.numbers,
              obscureText: false,
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
              text: "Sign Up",
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => RegistrationSelectionModule(),
                  ),
                  (route) => false,
                );
              },
            ),
          ),
          SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {},
            child: RichText(
              text: TextSpan(
                text: "Already have an account? ",
                style:
                    AppTextStyles.subtitle.copyWith(color: AppColors.ksurface),
                children: [
                  TextSpan(
                    text: "Login in",
                    style: AppTextStyles.subtitle.copyWith(
                      color: AppColors.kprimary,
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
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
