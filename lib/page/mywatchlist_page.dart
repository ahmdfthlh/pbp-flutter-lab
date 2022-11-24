import 'package:counter_7/main.dart';
import 'package:counter_7/data/mywatchlist_data.dart';
import 'package:counter_7/page/tambah_budget.dart';
import 'package:counter_7/page/budget_page.dart';
import 'package:counter_7/page/mywatchlist_detail.dart';
import 'package:counter_7/model/budget.dart';
import 'package:counter_7/model/mywatchlist.dart';
import 'package:flutter/material.dart';

class MyWatchListPage extends StatefulWidget {
  const MyWatchListPage({super.key});

  @override
  State<MyWatchListPage> createState() => _MyWatchListPageState();
}

class _MyWatchListPageState extends State<MyWatchListPage> {
  late MyWatchList_Data data_watchlist;
  late Future<List<MyWatchList>> _watchlist;

  Color colorWatched(Watched status) {
    if (status == Watched.NOT_YET) {
      return Color.fromARGB(255, 255, 234, 0);
    } else {
      return Color.fromARGB(255, 0, 222, 7);
    }
  }

  bool checkStatusWatched(Watched status) {
    if (status == Watched.NOT_YET) {
      return false;
    } else {
      return true;
    }
  }

  @override
  void initState() {
    data_watchlist = MyWatchList_Data();
    _watchlist = data_watchlist.fetchWatchlist();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Watch List'),
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
        body: FutureBuilder(
            future: _watchlist,
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                return ListView.builder(
                  itemBuilder: (context, index) {
                    MyWatchList movie = snapshot.data[index];
                    return Card(
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: colorWatched(movie.fields.watched)),
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 32, bottom: 32, left: 16, right: 16),
                          child: ListTile(
                              title: Text(movie.fields.title,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            MyWatchList_Detail(
                                              index: index,
                                              watchList: snapshot.data[index],
                                            )));
                              },
                              trailing: SizedBox(
                                  height: 80,
                                  width: 80,
                                  child: Row(children: [
                                    Expanded(
                                        child: CheckboxListTile(
                                      value: checkStatusWatched(
                                          movie.fields.watched),
                                      onChanged: (newValue) {
                                        setState(() {
                                          if (movie.fields.watched ==
                                              Watched.NOT_YET) {
                                            movie.fields.watched =
                                                Watched.NOT_YET;
                                            colorWatched(Watched.NOT_YET);
                                          } else {
                                            movie.fields.watched =
                                                Watched.WATCHED;
                                            colorWatched(Watched.WATCHED);
                                          }
                                        });
                                      },
                                      controlAffinity:
                                          ListTileControlAffinity.leading,
                                    )),
                                  ]))),
                        ));
                  },
                  itemCount: snapshot.data.length,
                );
              }
            }));
  }
}
