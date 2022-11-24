import 'package:flutter/material.dart';
import 'package:counter_7/model/mywatchlist.dart';
import 'package:counter_7/page/mywatchlist_page.dart';
import 'package:counter_7/page/tambah_budget.dart';
import 'package:counter_7/page/budget_page.dart';
import 'package:counter_7/main.dart';

class MyWatchList_Detail extends StatelessWidget {
  final MyWatchList watchList;
  final int index;

  const MyWatchList_Detail(
      {super.key, required this.index, required this.watchList});

  String checkStatus(Watched status) {
    if (status == Watched.NOT_YET) {
      return "Not Yet";
    } else {
      return "Watched";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
            ),
            ListTile(
              title: const Text('counter_7'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const MyHomePage(title: 'Home | Flutter Demo')),
                );
              },
            ),
            ListTile(
              title: const Text('Tambah Budget'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TambahBudgetPage()),
                );
              },
            ),
            ListTile(
              title: const Text('List Budget'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ListBudgetPage()),
                );
              },
            ),
            ListTile(
              title: const Text('My Watch List'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MyWatchListPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Padding(padding: EdgeInsets.only(top: 10, bottom: 10)),
          Center(
            child: Text(watchList.fields.title,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 10, left: 10),
            child: Row(
              children: [
                const Text("Release Date: ",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text(watchList.fields.releaseDate,
                    style: const TextStyle(fontSize: 20)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 10, left: 10),
            child: Row(
              children: [
                const Text("Rating: ",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text(watchList.fields.rating.toString(),
                    style: const TextStyle(fontSize: 20)),
                const Text("/5", style: TextStyle(fontSize: 20)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
            child: Row(
              children: [
                const Text("Status: ",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text(checkStatus(watchList.fields.watched),
                    style: const TextStyle(fontSize: 20)),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 10),
            child: Text("Review:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(watchList.fields.review,
                style: const TextStyle(fontSize: 20)),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 50,
        margin: const EdgeInsets.all(10),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Center(
            child: Text('Back'),
          ),
        ),
      ),
    );
  }
}
