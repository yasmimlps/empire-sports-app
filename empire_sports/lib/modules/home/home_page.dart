import 'package:empire_sports/components/menu_tab.dart';
import 'package:empire_sports/modules/home/widgets/all_widgets_sections.dart';
import 'package:empire_sports/components/empire_widget.dart';
import 'package:empire_sports/theme/app_colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          shape: const Border(bottom: BorderSide(color: AppColors.headerColor)),
          automaticallyImplyLeading: false,
          backgroundColor: const Color.fromARGB(51, 245, 214, 10),
          title: const EmpireWidget(),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight - 10),
            child: _buildTabBar(),
          ),
        ),
        body: _buildTabBarView(),
      ),
    );
  }

  Widget _buildTabBar() {
    return TabBar(
      labelColor: AppColors.black,
      indicatorColor: AppColors.black,
      unselectedLabelColor: AppColors.blackOpacity,
      isScrollable: true,
      tabs: [
        _buildTab('assets/images/whistle.png', 'Todos'),
        _buildTab('assets/images/soccer.png', 'Futebol'),
        _buildTab('assets/images/basketball.png', 'Basquete'),
        _buildTab('assets/images/controller.png', 'E-Sports'),
      ],
    );
  }

  Widget _buildTab(String image, String text) {
    return Tab(
      child: MenuTab(image: image, text: text),
    );
  }

  Widget _buildTabBarView() {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.center,
          colors: AppColors.homeGradient,
        ),
      ),
      child: const TabBarView(
        children: [
          Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: AllWidgetsSections(),
            ),
          ),
          Center(child: Text('Futebol')),
          Center(child: Text('Basquete')),
          Center(child: Text('E-Sports')),
        ],
      ),
    );
  }
}
