import 'package:flutter/material.dart';
import 'package:multimedya/features/home/_ui/slider_name_buttons.dart';
import 'package:multimedya/widgets/appbar/appbar_widget.dart';
import 'package:multimedya/widgets/appbar/drawer_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      drawer: DrawerWidget(),
      body: Column(
        children: [
          SliderNameButtons(),
        ],
      ),

    );
  }
}