import 'package:flutter/material.dart';
import 'package:multimedya/features/sub_pages/sub_home/trends_card/view_model/trends_view_model.dart';

class TrendsCard extends StatelessWidget {
  const TrendsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("En çok izlenenler"),
              Card(
                child: Text("Tümü"),
              ),
            ],
          ),
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: TrendsCardViewModel().trendsVideo.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    SizedBox(
                        height: 80,
                        width: 200,
                        child: Card(
                          color: Colors.grey.shade300,
                        )),
                    Text(TrendsCardViewModel().trendsVideo[index])
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
