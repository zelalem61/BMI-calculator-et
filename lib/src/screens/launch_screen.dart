import 'package:flutter/material.dart';
import '../home/widgets/app_bar.dart';
import '../home/widgets/colors.dart';
import '../home/widgets/section_item.dart';
import '../language/localization_util.dart';
import '../settings/settings.controller.dart';

class LaunchScreen extends StatelessWidget {
  LaunchScreen({Key? key, required this.settingsController}) : super(key: key);

  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppBarWidget(settingsController: settingsController, title: l(context).health,),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: const Alignment(0.8, 1),
            colors: colors,
            tileMode: TileMode.mirror,
          ),
        ),
        child: Padding(
          padding:  EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                SizedBox(
                  width: 150,
                  height: 150,
                  child: Image(
                    image: AssetImage("assets/images/fitness_app_logo.png"),
                  ),
                ),
                SectionItem(
                  title: l(context).title,
                  img: "assets/images/scale.jpg",
                  page: '/bmi',
                ),
                SectionItem(
                  title: l(context).recommendationDiet,
                  img: "assets/images/checklist.jpg",
                  page: '/food',
                ),
                SectionItem(
                  title: l(context).recommendationExe,
                  img: "assets/images/gym.jpg",
                  page: '/exercise',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
