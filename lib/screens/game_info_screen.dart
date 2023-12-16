import 'package:flutter/material.dart';

/*
  NOTA: los datos están harcodeados por el momento
*/

class GameInfoScreen extends StatelessWidget {
  const GameInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        child: const Icon(
          Icons.arrow_back,
          color: Colors.white
        ),
        onPressed: () {
          Navigator.pushReplacementNamed(context, 'home');
        },
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            CardCoverAndName(size: size),
            const CardSummary(),
            const MoreInformation()
          ],
        ),
      ),
    );
  }
}

class CardCoverAndName extends StatelessWidget {
  final Size size;

  const CardCoverAndName({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.50, 
      child: Card(
        elevation: 4.0,
        child: Stack(
          children: [
            Image.network(
              'https://m.media-amazon.com/images/I/81fwGFBXWFL._AC_UF894,1000_QL80_.jpg',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black.withOpacity(0.6),
                      Colors.transparent,
                    ],
                  ),
                ),
                padding: const EdgeInsets.all(8.0),
                child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Starfield',
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontFamily: 'Roboto'
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '2023-12-15',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ],
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardSummary extends StatefulWidget {
  const CardSummary({
    Key? key,
  }) : super(key: key);

  @override
  _CardSummaryState createState() => _CardSummaryState();
}

class _CardSummaryState extends State<CardSummary> {
  bool showMore = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Summary',
            style: TextStyle(fontFamily: 'Roboto', fontSize: 28),
          ),
          const SizedBox(height: 10),
          Text(
            "In the year 2330, humanity has ventured beyond our solar system, settling new planets, and living as a spacefaring people. You will join Constellation, the last group of space explorers seeking rare artifacts throughout the galaxy and navigate the vast expanse of space in Bethesda Game Studios' biggest and most ambitious game.",
            style: const TextStyle(fontFamily: 'Roboto', fontSize: 17),
            maxLines: showMore ? null : 5,
            textAlign: TextAlign.justify,
          ),
          InkWell(
            onTap: () {
              setState(() {
                showMore = !showMore;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                showMore ? 'Show less' : 'Show more',
                style: const TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 16
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class MoreInformation extends StatelessWidget {
  const MoreInformation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'More Information',
            style: TextStyle(
              fontSize: 24
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Genres: Role-playing (RPG), Adventure',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Platforms: Microsoft Windows, Xbox Series X|S',
            style: TextStyle(
              fontSize: 18
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Total rating: 70',
            style: TextStyle(
              fontSize: 18
            ),
          ),
        ],
      ),
    );
  }
}

