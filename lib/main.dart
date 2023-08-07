import 'package:flutter/material.dart';

import 'list_countries_cards.dart';
import 'list_countries_lines.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  final List<Map<String, Object>> winnersList = const [
    {
      'country': 'Argentina',
      'year': 2022,
      'winner': 3,
      'flag': 'argentina',
    },
    {
      'country': 'France',
      'year': 2018,
      'winner': 2,
      'flag': 'france',
    },
    {
      'country': 'Germany',
      'year': 2014,
      'winner': 4,
      'flag': 'germany',
    },
    {
      'country': 'Spain',
      'year': 2010,
      'winner': 1,
      'flag': 'spain',
    },
    {
      'country': 'Italy',
      'year': 2006,
      'winner': 4,
      'flag': 'italy',
    },
    {
      'country': 'Brazil',
      'year': 2002,
      'winner': 5,
      'flag': 'brazil',
    },
    {
      'country': 'France',
      'year': 1998,
      'winner': 1,
      'flag': 'france',
    },
    {
      'country': 'Brazil',
      'year': 1994,
      'winner': 4,
      'flag': 'brazil',
    },
    {
      'country': 'West Germany',
      'year': 1990,
      'winner': 3,
      'flag': 'germany',
    },
    {
      'country': 'Argentina',
      'year': 1986,
      'winner': 2,
      'flag': 'argentina',
    },
    {
      'country': 'Italy',
      'year': 1982,
      'winner': 1,
      'flag': 'italy',
    },
    {
      'country': 'Argentina',
      'year': 1978,
      'winner': 1,
      'flag': 'argentina',
    },
    {
      'country': 'West Germany',
      'year': 1974,
      'winner': 2,
      'flag': 'germany',
    },
    {
      'country': 'Brazil',
      'year': 1970,
      'winner': 3,
      'flag': 'brazil',
    },
    {
      'country': 'England',
      'year': 1966,
      'winner': 1,
      'flag': 'england',
    },
    {
      'country': 'Brazil',
      'year': 1962,
      'winner': 2,
      'flag': 'brazil',
    },
    {
      'country': 'Brazil',
      'year': 1958,
      'winner': 1,
      'flag': 'brazil',
    },
    {
      'country': 'West Germany',
      'year': 1954,
      'winner': 1,
      'flag': 'germany',
    },
    {
      'country': 'Uruguay',
      'year': 1950,
      'winner': 2,
      'flag': 'uruguay',
    },
    {
      'country': 'Italy',
      'year': 1938,
      'winner': 2,
      'flag': 'italy',
    },
    {
      'country': 'Italy',
      'year': 1934,
      'winner': 1,
      'flag': 'italy',
    },
    {
      'country': 'Uruguay',
      'year': 1930,
      'winner': 1,
      'flag': 'uruguay',
    },
  ];

  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green.shade800,
          title: const Text('Winners', style: TextStyle(color: Colors.white)),
        ),
        backgroundColor: Colors.grey.shade200,
        body: Column(
          children: [
            Row(
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                const Text('View in cards'),
              ],
            ),
            Expanded(
              child: isChecked
                  ? ListCountriesCards(
                      title: 'Winners',
                      winnersList: widget.winnersList,
                    )
                  : ListCountriesLines(
                      title: 'Winners',
                      winnersList: widget.winnersList,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
