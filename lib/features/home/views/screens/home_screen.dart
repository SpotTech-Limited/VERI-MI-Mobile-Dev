import 'package:flutter/material.dart';

import '/app/theme/app_colors.dart';
import '/core/components/buttons/circular_offset_button.dart';
import '/core/constants/fonts.dart';
import '/core/constants/paddings.dart';
import '/core/constants/sized_boxes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: Paddings.defaultPadding,
        child: CustomScrollView(
          slivers: [
            HomeScreenAppBar(),
          ],
        ),
      ),
    );
  }
}

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Row(
            children: [
              //! Hi Text
              const Text(
                'Hi, Elena',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: Fonts.aileron,
                  color: AppColors.grey,
                ),
              ),

              const Spacer(),

              CircularOffsetButton(
                backgroundColor: Theme.of(context).primaryColor,
                onPressed: () {},
                child: const Icon(
                  Icons.notifications,
                  color: AppColors.white,
                  size: 30,
                ),
              ),

              SizedBoxes.w10,

              CircularOffsetButton(
                backgroundColor: AppColors.transparent,
                onPressed: () {},
                imageUrl: 'assets/images/mrbeast.jpg',
              ),
            ],
          ),
          Divider(
            height: 40,
            color: Theme.of(context).primaryColor,
            thickness: 2,
          ),
        ],
      ),
    );
  }
}
