import 'package:flutter/material.dart';

class ListCountriesLines extends StatelessWidget {
  const ListCountriesLines(
      {super.key, required this.title, required this.winnersList});

  final String title;
  final List<Map<String, Object>> winnersList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: winnersList.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              tileColor: Colors.white,
              leading: Image(
                image: AssetImage(
                    'assets/flags/${winnersList[index]['flag'].toString()}.png'),
                width: 40,
                height: 40,
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(winnersList[index]['country'].toString()),
                  Row(
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
                  )
                ],
              ),
              subtitle: Text(
                winnersList[index]['year'].toString(),
                style: TextStyle(color: Colors.grey.shade600),
              ),
            ),
            Divider(
              height: 0.5,
              thickness: 0.5,
              indent: 0.5,
              endIndent: 0,
              color: Colors.grey.shade400,
            ),
          ],
        );
      },
    );
  }
}
