import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Search extends StatelessWidget {
  final String title;
  final String image;
  const Search({Key? key, required this.title, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 70
            ),
            Text(
              'Be patient',
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 110,
            ),
            AvatarGlow(
              glowColor: Colors.blue,
                child: Material(
                  elevation: 8,
                  shape: CircleBorder(),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[100],
                    child: Image.asset(
                      image,
                      height: 80,
                    ),
                    radius: 95,
                  ),
                ),
                endRadius: 150),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Requesting closest ${title}',
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: 19,
              ),
            )
          ],
        ),
      ),
    );
  }
}
