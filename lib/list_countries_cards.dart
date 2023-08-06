import 'package:flutter/material.dart';

class ListCountriesCards extends StatelessWidget {
  const ListCountriesCards(
      {super.key, required this.title, required this.winnersList});

  final String title;
  final List<Map<String, Object>> winnersList;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: ListView.builder(
        itemCount: winnersList.length,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: Card(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Text(winnersList[index]['country'].toString(),
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        )),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Image(
                      image: AssetImage(
                          'assets/flags/${winnersList[index]['flag'].toString()}.png'),
                      width: 100,
                      height: 100,
                    ),
                  ),
                  Text(
                    winnersList[index]['year'].toString(),
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ...List<Widget>.generate(
                          int.parse(winnersList[index]['winner'].toString()),
                          (i) => const Image(
                            image: AssetImage('assets/icons/trophy.png'),
                            width: 20,
                            height: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
