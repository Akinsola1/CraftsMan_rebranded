import 'package:craftsman_refurbished/screens/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Problem_description extends StatelessWidget {
  final String title;
  final String image;
  const Problem_description(
      {Key? key, required this.title, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 70,
              ),
              Text('Complete ${title} request',
                  style: GoogleFonts.openSans(
                    color: Colors.black,
                    fontSize: 22,
                  )),
              const SizedBox(
                height: 50,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Select problem',
                      style: GoogleFonts.openSans(
                        color: Colors.black,
                        fontSize: 18,
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    cursorColor: Colors.black,
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Select problem',
                      hintStyle: GoogleFonts.openSans(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.blue, style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(9)),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Enter problem description',
                    style:
                        GoogleFonts.openSans(color: Colors.black, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    maxLines: 6,
                    cursorColor: Colors.black,
                    style: const TextStyle(color: Colors.black, fontSize: 18),
                    decoration: InputDecoration(
                      hintText: 'Keep it simple stupid',
                      hintStyle: GoogleFonts.openSans(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          // borderSide: BorderSide.none,
                          borderSide: BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.circular(9)),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text('Location',
                      style: GoogleFonts.openSans(
                        color: Colors.black,
                        fontSize: 18,
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    cursorColor: Colors.black,
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Using current position tap to change',
                      hintStyle: GoogleFonts.openSans(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xff0163E0),
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(9)),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 60.0,
                width: size.width * .6,
                child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9),),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Search(title: title, image: image)));
                    },
                    padding: EdgeInsets.all(10.0),
                    color: Colors.blue.shade800,
                    textColor: Colors.white,
                    child: Text(
                      "Complete request",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
