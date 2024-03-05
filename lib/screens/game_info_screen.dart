import 'package:flutter/material.dart';
import 'package:trabajo_practico_final/models/game_info_preview.dart';
import 'package:intl/intl.dart';

class GameInfoScreen extends StatelessWidget {
  final GameInfoPreview game;

  const GameInfoScreen({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        child: const Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () {
          Navigator.popUntil(context, (route) {
            final currentRoute = route.settings.name;
            return currentRoute == 'home' || currentRoute == 'game_list';
          });
        },
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            CardCoverAndName(
                size: size,
                name: game.name,
                cover: game.cover,
                firstReleaseDate: game.firstReleaseDate),
            if (game.summary != null) CardSummary(summary: game.summary!),
            if (game.genres != null ||
                game.platforms != null ||
                game.totalRating != null)
              MoreInformation(
                genres: game.genres,
                platforms: game.platforms,
                totalRating: game.totalRating,
              ),
            _buildNoInformationMessage(game, context)
          ],
        ),
      ),
    );
  }
}

Widget _buildNoInformationMessage(GameInfoPreview game, BuildContext context) {
  if (game.summary == null && game.genres == null && game.platforms == null && game.totalRating == null) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/Pixel_Art-512.png',
              width: 150,
              height: 150,
            ),
            const SizedBox(height: 16),
            const Text(
              'No information available',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'We\'re sorry, but we hope to have more information soon!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  } else {
    return const SizedBox();
  }
}

class CardCoverAndName extends StatelessWidget {
  final Size size;
  final String name;
  final String cover;
  final int? firstReleaseDate;

  const CardCoverAndName({
    Key? key,
    required this.size,
    required this.name,
    required this.cover, 
    this.firstReleaseDate,
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
              cover,
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontFamily: 'Roboto',
                        shadows: [
                          Shadow(
                            blurRadius: 5.0,
                            color: Colors.black,
                            offset: Offset(3.0, 3.0),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      firstReleaseDate != null
                        ? DateFormat('yyyy-MM-dd').format(DateTime.fromMicrosecondsSinceEpoch(firstReleaseDate! * 1000000))
                        : '',
                      style: const TextStyle(
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
  final String summary;

  const CardSummary({
    Key? key,
    required this.summary,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
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
            widget.summary,
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
                    fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MoreInformation extends StatelessWidget {
  final List<String>? genres;
  final List<String>? platforms;
  final int? totalRating;

  final List<Widget> informationWidgets = [];

  MoreInformation({
    Key? key,
    this.genres,
    this.platforms,
    this.totalRating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'More Information',
            style: TextStyle(fontSize: 24),
          ),
          if (genres != null && genres!.isNotEmpty) ..._buildGenres(),
          if (platforms != null && platforms!.isNotEmpty) ..._buildPlatforms(),
          if (totalRating != null) ..._buildTotalRating(),
        ],
      ),
    );
  }

  List<Widget> _buildGenres() {
    return [
      const SizedBox(height: 10),
      Text(
        'Genres: ${genres!.join(", ")}',
        style: const TextStyle(fontSize: 18),
      ),
    ];
  }

  List<Widget> _buildPlatforms() {
    return [
      const SizedBox(height: 10),
      Text(
        'Platforms: ${platforms!.join(", ")}',
        style: const TextStyle(fontSize: 18),
      ),
    ];
  }

  List<Widget> _buildTotalRating() {
    return [
      const SizedBox(height: 10),
      Text(
        'Total rating: $totalRating',
        style: const TextStyle(fontSize: 18),
      ),
    ];
  }
}
