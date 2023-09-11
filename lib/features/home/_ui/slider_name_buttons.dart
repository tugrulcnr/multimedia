import 'package:flutter/material.dart';
import 'package:multimedya/features/home/view_model/home_view_model.dart';

class SliderNameButtons extends StatelessWidget {
  SliderNameButtons({super.key});

  double _radius = 35;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: HomeViewModel().names.length,
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
                    Text(HomeViewModel().names[index])
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
