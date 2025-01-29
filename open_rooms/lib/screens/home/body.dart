import 'package:flutter/material.dart';
import 'package:open_rooms/widgets/Top_view.dart';
import 'package:open_rooms/widgets/blocks.dart';
import 'package:open_rooms/utils/app_pallete.dart';
import 'package:routemaster/routemaster.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({super.key, required this.username});

  final String username;

  void navigateToBlock(BuildContext context, String block) {
    Routemaster.of(context).push('/block/$block');
  }

  @override
  Widget build(BuildContext context) {
    return TopView(text1: 'Hello,', text2: '$username!', add: [
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Where Are You?',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 200,
                  child: Row(
                    children: [
                      Blocks(
                          image: 'assets/a1_block.jpg',
                          text: 'A Block',
                          onTap: () => navigateToBlock(context, 'A')),
                      SizedBox(width: 10),
                      Blocks(
                          image: 'assets/d_block.jpg',
                          text: 'B Block',
                          onTap: () => navigateToBlock(context, 'B')),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                SizedBox(
                  height: 200,
                  child: Row(
                    children: [
                      Blocks(
                          image: 'assets/c_block.jpg',
                          text: 'C Block',
                          onTap: () => navigateToBlock(context, 'C')),
                      SizedBox(width: 10),
                      Blocks(
                          image: 'assets/d_block.jpg',
                          text: 'D Block',
                          onTap: () => navigateToBlock(context, 'D')),
                    ],
                  ),
                ),
              ]))
    ]);
  }
}
