import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(children: [
          Align(
            alignment: Alignment.topCenter,
            child: Image(
              image: NetworkImage(
                  'https://raw.githubusercontent.com/cognizance-amrita/tasks/main/task5/resources/art-stairs%403x.png'),
              width: 300,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              width: double.infinity,
              height: 200,
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
                    child: Text('Your Premium Cloud',
                        style: GoogleFonts.patrickHand(
                          textStyle: Theme.of(context).textTheme.bodyText2,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4, bottom: 4),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                          'Launch your next \ncampaign within minutes \nwith Cloud Campaign \nMonitor',
                          style: GoogleFonts.creteRound(
                            textStyle: Theme.of(context).textTheme.headline2,
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
