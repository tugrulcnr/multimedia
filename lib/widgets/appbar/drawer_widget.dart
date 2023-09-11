import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          SizedBox(
            height: 100,
          ),
          Text("Lorem Lorem",style: TextStyle(fontSize: 30),),
          Text("Lorem Lorem",style: TextStyle(fontSize: 30),),
          Text("Lorem Lorem",style: TextStyle(fontSize: 30),),
          Text("Lorem Lorem",style: TextStyle(fontSize: 30),),
        ],
      ),
    );
  }
}
