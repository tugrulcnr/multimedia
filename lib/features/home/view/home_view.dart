import 'package:flutter/material.dart';
import 'package:multimedya/features/home/_ui/bottomNavigationBar.dart';
import 'package:multimedya/features/home/_ui/card_swiper.dart';
import 'package:multimedya/features/home/_ui/image_card.dart';
import 'package:multimedya/features/home/_ui/slider_country_buttons.dart';
import 'package:multimedya/features/home/_ui/slider_name_buttons.dart';
import 'package:multimedya/features/sub_pages/sub_home/clips_card/view/clip_card.dart';
import 'package:multimedya/features/sub_pages/sub_home/movies_card/view/movie_card.dart';
import 'package:multimedya/features/sub_pages/sub_home/trends_card/view/trends_card.dart';
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
    double _deviceWidth = MediaQuery.of(context).size.width;
    double _deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBarWidget(),
      drawer: DrawerWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SliderNameButtons(),
            const SizedBox(height: 200, child: CardSwiper()),
            SizedBox(height: 80, width: _deviceWidth, child: CardImage()),
            SiliderCountryButtons(),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: SizedBox(
                  height: 150, width: _deviceWidth, child: TrendsCard()),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: SizedBox(
                  height: 250, width: _deviceWidth, child: ClipsCard()),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: SizedBox(
                  height: 150, width: _deviceWidth, child: MovieCard()),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}
