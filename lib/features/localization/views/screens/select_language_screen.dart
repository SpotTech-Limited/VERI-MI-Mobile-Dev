import 'package:flutter/material.dart';

import '/app/theme/app_colors.dart';

class SelectLanguageScreen extends StatelessWidget {
  const SelectLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),

          //! App Logo
          Image.asset('assets/icons/logo.png'),

          const Spacer(),

          //! Choose Language Text
          _buildChooseLanguageText(),

          const SizedBox(height: 20),

          //! Choose Language Dialog
          _buildChooseLanguageDialog(context),

          const Spacer(),

          //! Bottom Bar
          _buildPageBottomBar(context),
        ],
      ),
    );
  }

  Widget _buildChooseLanguageText() => const Text(
        'Choose Your Language',
        style: TextStyle(
          color: AppColors.darkSlateGrey,
          fontFamily: 'Aileron',
          fontSize: 16,
        ),
      );

  Widget _buildChooseLanguageDialog(BuildContext context) => Container(
        height: 50,
        width: MediaQuery.of(context).size.width * 0.6,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(25),
        ),
      );

  Widget _buildPageBottomBar(BuildContext context) => Container(
        height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/background.png'),
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35.0),
            topRight: Radius.circular(35.0),
          ),
        ),
        child: Center(
          child: RichText(
            text: const TextSpan(
              text: 'Need help? Visit our ',
              style: TextStyle(),
              children: [
                TextSpan(
                  text: 'help center',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.darkOrange,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Aileron',
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
