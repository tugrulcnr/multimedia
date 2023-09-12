import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Swiper(
            itemBuilder: (BuildContext context, int index) {
              return Image.network(
                "https://via.placeholder.com/350x150",
                fit: BoxFit.fill,
              );
            },
            itemCount: 3,
            pagination: SwiperPagination(),
           // control: SwiperControl(),
            autoplay :true,
            scale: 2,
            
          ),
      ),
    );
    
  }
}
