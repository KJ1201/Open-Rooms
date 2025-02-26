import 'package:flutter/material.dart';
import 'package:open_rooms/utils/app_pallete.dart';

class ListContainer extends StatelessWidget {
  const ListContainer(
      {super.key,
      required this.image,
      required this.text,
      required this.onTap,
      this.fontSize = 20});

  final String image;
  final String text;
  final VoidCallback onTap;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 3,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.only(right: 15),
          decoration: BoxDecoration(
            color: Pallete.gradient1,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(image),
            ),
            // gradient: LinearGradient(colors: [
            //   Pallete.gradient1,
            //   Pallete.gradient2,
            //   Pallete.gradient3,
            // ])
          ),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Stack(
              children: [
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      text,
                      style: TextStyle(
                        fontSize: fontSize,
                        color: Pallete.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
