import 'package:flutter/material.dart';
import 'package:multimedya/features/sub_pages/sub_home/movies_card/view_model/movie_view_model.dart';
class MovieCard extends StatelessWidget {
  const MovieCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Filmler"),
              Card(
                child: Text("Tümü"),
              ),
            ],
          ),
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: MovieViewModel().movies.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
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
