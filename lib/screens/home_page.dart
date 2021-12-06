import 'package:animate_do/animate_do.dart';
import 'package:craftsman_refurbished/screens/problem_description.dart';
import 'package:craftsman_refurbished/widget/craftsman_selection.dart';
import 'package:craftsman_refurbished/widget/todo.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/widgets.dart';

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(children: [
          const SizedBox(
            height: 70,
          ),
          FadeInDown(
            delay: const Duration(milliseconds: 1000),
            child: Text('Request a service',
                style: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: 25,
                )),
          ),
          const SizedBox(
            height: 40,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  craftsMan_selection(
                    image: 'assets/images/plumber.png',
                    title: 'Plumber',
                    ontap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Problem_description(
                                  title: 'Plumber',
                                  image: 'assets/images/plumber.png')));
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  craftsMan_selection(
                    image: 'assets/images/electrician.png',
                    title: 'Electrician',
                    ontap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Problem_description(
                                image: 'assets/images/electrician.png',
                                title: 'electrician',
                              )));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  craftsMan_selection(
                    image: 'assets/images/mechanic.png',
                    title: 'Mechanic',
                    ontap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Problem_description(
                                image: 'assets/images/mechanic.png',
                                title: 'mechanic',
                              )));
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  craftsMan_selection(
                    image: 'assets/images/painter.png',
                    title: 'Painter',
                    ontap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Problem_description(
                                image: 'assets/images/painter.png',
                                title: 'painter',
                              )));
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  craftsMan_selection(
                    image: 'assets/images/driver.png',
                    title: 'Driver',
                    ontap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Problem_description(
                                image: 'assets/images/driver.png',
                                title: 'driver',
                              )));
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  craftsMan_selection(
                    image: 'assets/images/carpenter.png',
                    title: 'Carpenter',
                    ontap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Problem_description(
                                image: 'assets/images/carpenter.png',
                                title: 'carpenter',
                              )));
                    },
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          FadeInUp(
            delay:const Duration(milliseconds: 2000),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Spacer(),
                Text(
                  'View More >>',
                  style: GoogleFonts.openSans(
                    color: Colors.blue,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          FadeInUp(
            delay:const Duration(milliseconds: 2000),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: const TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: 'TO-DO LIST - ',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          )),
                      TextSpan(
                        text: 'REFRESH',
                        style: TextStyle(color: Colors.blue, fontSize: 15),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          FadeInUp(
            delay: Duration(milliseconds: 2500),
            child: Column(
              children: const [
                ToDo(
                    title: 'Add payment method',
                    image: 'assets/images/credit_card.png'),
                SizedBox(
                  height: 20,
                ),
                ToDo(
                    title: 'Invite and earn',
                    image: 'assets/images/discount.png')
              ],
            ),
          ),
          const SizedBox(height: 40),
        ]),
      ),
    ));
  }
}
