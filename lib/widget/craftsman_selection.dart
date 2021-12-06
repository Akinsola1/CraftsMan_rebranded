import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class craftsMan_selection extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback ontap;
  const craftsMan_selection(
      {Key? key, required this.image, required this.title, required this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () => ontap(),
          child: Container(
            height: 120,
            width: 119,
            decoration: BoxDecoration(
                color: Color(0xffDADADA),
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 2.0,
                    spreadRadius: 0.0,
                    offset: Offset(2.0, 2.0), // shadow direction: bottom right
                  )
                ],
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.scaleDown, scale: 2)),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: GoogleFonts.openSans(
            color: Colors.black,
            fontSize: 15,
          ),
        )
      ],
    );
  }
}
