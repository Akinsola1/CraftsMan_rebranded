import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ToDo extends StatelessWidget {
  final String title;
  final String image;
  const ToDo({Key? key,required this.title,required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: 50,
      width: size.width,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
          border: Border.all(
            color: Colors.grey,
          )),
      child: Padding(
        padding: const EdgeInsets.all(13),
        child: Row(
          children: [
            Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                ),
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: 15,),
            Text(
              title,
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: 15,
              )
            ),
            Image.asset(
              image,
              height: 50,
              width: 50,
            )
          ],
        ),
      ),
    );
  }
}
