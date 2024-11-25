import 'package:flutter/material.dart';
import 'package:peakmart/app/resources/assets_manager.dart';
import 'package:peakmart/app/resources/color_manager.dart';
import 'package:peakmart/app/resources/style_manager.dart';
import 'package:peakmart/features/home/presentation/views/home_view.dart';
import 'package:peakmart/features/main/main_view_model.dart';
import 'package:peakmart/features/main/widget/custom_nav_bar.dart';

class MainView extends StatelessWidget {
  MainView({super.key});

  final MainViewModel _viewModel = MainViewModel();

  final List<NavBarItem> _navBarItems = [
    NavBarItem(iconPath: IconsAssets.home, label: 'Home'),
    NavBarItem(iconPath: IconsAssets.products, label: 'Products'),
    NavBarItem(iconPath: IconsAssets.notification, label: 'Notification'),
    NavBarItem(iconPath: IconsAssets.profile, label: 'Profile'),
  ];

  void _onNavItemTapped(int index) {
    _viewModel.onNavItemTapped(index);
  }

  Widget _buildBodyScreens(index) => [
        const HomeView(),
        Text('Products',
            style: getBoldStyle(color: ColorManager.primary, fontSize: 20)),
        Text('Notification',
            style: getBoldStyle(color: ColorManager.primary, fontSize: 20)),
        Text('Profile',
            style: getBoldStyle(color: ColorManager.primary, fontSize: 20)),
      ][index];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('bids'),
      ),
      body: StreamBuilder<int>(
          stream: _viewModel.currentIndexOutput,
          builder: (context, snapshot) {
            return Center(
              child: _buildBodyScreens(snapshot.data ?? 0),
            );
          }),
      bottomNavigationBar: StreamBuilder<int>(
          stream: _viewModel.currentIndexOutput,
          builder: (context, snapshot) {
            return CustomNavigationBar(
              items: _navBarItems,
              initialIndex: snapshot.data ?? 0,
              onTap: _onNavItemTapped,
              indicatorHeight: 6,
            );
          }),
    );
  }
}
