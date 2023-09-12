import 'package:flutter/material.dart';
import 'package:multimedya/features/sub_pages/sub_home/clips_card/view_model/clips_view_model.dart';

class ClipsCard extends StatelessWidget {
  const ClipsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Klipler"),
              Card(
                child: Text("Tümü"),
              ),
            ],
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: ClipsViewModel().clipsVideo.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    SizedBox(
                        height: 80,
                        width: 200,
                        child: Card(
                          color: Colors.grey.shade300,
                        )),
                    SizedBox(
                        height: 80,
                        width: 200,
                        child: Card(
                          color: Colors.grey.shade300,
                        )),
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
