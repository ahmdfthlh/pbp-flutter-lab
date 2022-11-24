import 'package:counter_7/model/mywatchlist.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MyWatchList_Data {
  Future<List<MyWatchList>> fetchWatchlist() async {
    var url = 'https://tugas2fattah.herokuapp.com/mywatchlist/json/';
    List<MyWatchList> mywatchlist = [];
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var mywatchlistJson = json.decode(response.body);
      for (var movie in mywatchlistJson) {
        mywatchlist.add(MyWatchList.fromJson(movie));
      }
    }
    return mywatchlist;
  }
}
