import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';

import '../../../../../core/core.dart';
import '../../../../../generated/assets.dart';
import '../pages/our_program.dart';
import 'home_tab_icon.dart';

class HomeBottomBar extends StatefulWidget {
  const HomeBottomBar({super.key});

  @override
  State<HomeBottomBar> createState() => _HomeBottomBarState();
}

class _HomeBottomBarState extends State<HomeBottomBar>
    with SingleTickerProviderStateMixin {
  late int currentPage;
  late TabController tabController;

  void changePage(int newPage) {
    setState(() {
      currentPage = newPage;
    });
  }

  @override
  void initState() {
    currentPage = 0;
    tabController = TabController(length: 5, vsync: this);
    tabController.animation!.addListener(() {
      final value = tabController.animation!.value.round();
      if (value != currentPage && mounted) {
        changePage(value);
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BottomBar(
      barColor: Colors.grey.shade300,
      scrollOpposite: true,
      borderRadius: BorderRadius.circular(500),
      duration: const Duration(seconds: 1),
      curve: Curves.decelerate,
      start: 5,
      body:
          (BuildContext context, ScrollController controller) => TabBarView(
            controller: tabController,
            dragStartBehavior: DragStartBehavior.down,
            // physics: const BouncingScrollPhysics(),
            physics: const NeverScrollableScrollPhysics(),

            children: const [
              OurProgramPage(htmlContent: Assets.htmlHome, title: "Home"),
              OurProgramPage(htmlContent: Assets.htmlAbout, title: "About"),
              OurProgramPage(
                htmlContent: Assets.htmlOurTeam,
                title: "Our Team",
              ),
              OurProgramPage(htmlContent: Assets.htmlWhyUs, title: "Why Us?"),
              OurProgramPage(
                htmlContent: Assets.htmlOurProgram,
                title: "Feedback",
              ),
            ],
          ),
      child: TabBar(
        splashBorderRadius: BorderRadius.circular(50),
        dividerHeight: 0,
        indicatorPadding: const EdgeInsets.fromLTRB(6, 0, 6, 0),
        controller: tabController,
        indicator: UnderlineTabIndicator(
          borderSide: const BorderSide(
            width: 4,
            color: AppColor.primaryColor600,
          ),
          insets: const EdgeInsets.fromLTRB(16, 0, 16, 8),
          borderRadius: BorderRadius.circular(5),
        ),
        tabs: [
          HomeTabIcon(
            icon: Icons.home,
            iconColor: currentPage == 0 ? Colors.blue : null,
          ),
          HomeTabIcon(
            icon: Icons.info,
            iconColor: currentPage == 1 ? Colors.blue : null,
          ),
          HomeTabIcon(
            icon: Icons.person,
            iconColor: currentPage == 2 ? Colors.blue : null,
          ),
          HomeTabIcon(
            icon: Icons.question_mark_rounded,
            iconColor: currentPage == 3 ? Colors.blue : null,
          ),
          HomeTabIcon(
            icon: Icons.library_books,

            iconColor: currentPage == 4 ? Colors.blue : null,
          ),
        ],
      ),
    );
  }
}
