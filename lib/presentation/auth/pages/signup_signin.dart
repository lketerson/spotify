import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/common/helpers/theme_helper.dart';
import 'package:spotify/common/widgets/button/basic_app_button.dart';
import 'package:spotify/core/configs/app_colors.dart';
import 'package:spotify/core/configs/assets/app_images.dart';
import 'package:spotify/core/configs/assets/app_vectors.dart';

class SignupSigninPage extends StatelessWidget {
  const SignupSigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(AppVectors.topPattern),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(AppVectors.bottomPattern),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(AppImages.authBg),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppVectors.logo),
                  SizedBox(
                    height: 55,
                  ),
                  Text(
                    "Enjoy Listening To Music",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                  ),
                  SizedBox(
                    height: 21,
                  ),
                  Text(
                    "Spotify is a proprietary Swedish audio streaming and media service provider",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                        color: AppColors.grey),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child:
                            BasicAppButton(onPressed: () {}, label: "Register"),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextButton(
                          child: Text(
                            "Sign in",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: context.isDarkMode
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
