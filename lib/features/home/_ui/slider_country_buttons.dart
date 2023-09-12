import 'package:flutter/material.dart';
import 'package:multimedya/features/home/view_model/home_view_model.dart';

class SiliderCountryButtons extends StatelessWidget {
   SiliderCountryButtons({super.key});

double _radius = 35;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _radius*2.5,
      child: ListView.builder(
        itemCount: HomeViewModel().countries.length,
        scrollDirection: Axis.horizontal, // Yatay yönde kaydırma ekleyin
        itemBuilder: (BuildContext context, int index) {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: _radius * 2,
                      width: _radius * 2,
                      child: Card(
                        color: Colors.grey.shade400,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(_radius))),
                      ),
                    ),
                    Text(HomeViewModel().countries[index])
                  ],
                ),
                const SizedBox(
                  width: 20,
                )
              ],
              
            ),
          );
        },
      ),
    );
  }
}
