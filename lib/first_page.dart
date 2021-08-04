import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Stack(children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image(
                image: NetworkImage(
                    'https://raw.githubusercontent.com/cognizance-amrita/tasks/main/task5/resources/art-cloud%403x.png'),
                width: 240,
              ),
            ),
            Align(
              alignment: Alignment(1, 0.20),
              child: Image(
                image: NetworkImage(
                    'https://raw.githubusercontent.com/cognizance-amrita/tasks/main/task5/resources/art-work%403x.png'),
                width: 250,
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                width: 320,
                height: 220,
                padding: EdgeInsets.only(
                  top: 20.0,
                  left: 20.0,
                  right: 20.0,
                ),
                //color: Colors.amber,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text('Hello! ',
                          style: GoogleFonts.patrickHand(
                            textStyle: Theme.of(context).textTheme.bodyText1,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4, bottom: 4),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                            'Your own \nprivate Cloud is \none step away.',
                            style: GoogleFonts.creteRound(
                              textStyle: Theme.of(context).textTheme.headline1,
                            )),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text('Swipe right to get started.',
                          style: GoogleFonts.patrickHand(
                            textStyle: Theme.of(context).textTheme.subtitle1,
                          )),
                    ),
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
