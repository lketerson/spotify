import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:youtube/common/widgets/button/basic_app_button.dart';
import 'package:youtube/core/configs/app_colors.dart';
import 'package:youtube/core/configs/assets/app_images.dart';
import 'package:youtube/core/configs/assets/app_vectors.dart';
import 'package:youtube/presentation/choose_mode/pages/choose_mode.dart';

class GettingStarted extends StatelessWidget {
  const GettingStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  AppImages.introBg,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.black.withValues(
              alpha: 0.15,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(
                    AppVectors.logo,
                  ),
                ),
                Spacer(),
                Text(
                  'Enjoy Listening To Music',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 21,
                ),
                Text(
                  'Lorem ipsum dolor sit amet consectetur adisciping elit, sad do eiusmod tempor incididunt ur labore et dolore magna aliqua',
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColors.grey,
                    fontSize: 13,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                BasicAppButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChooseModePage(),
                        ),
                      );
                    },
                    label: 'Get Started')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
