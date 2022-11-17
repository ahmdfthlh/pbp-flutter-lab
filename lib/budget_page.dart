import 'package:counter_7/main.dart';
import 'package:counter_7/tambah_budget.dart';
import 'package:counter_7/models/budget.dart';
import 'package:flutter/material.dart';

class ListBudgetPage extends StatefulWidget {
  const ListBudgetPage({super.key});

  @override
  State<ListBudgetPage> createState() => _ListBudgetPageState();
}

class _ListBudgetPageState extends State<ListBudgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Budget'),
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
          ],
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(5),
            elevation: 8,
            child: ListTile(
              title: Text(Budget.listBudget[index].judul,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )),
              subtitle: Text(Budget.listBudget[index].nominal.toString(),
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  )),
              trailing: Text(Budget.listBudget[index].tipe,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  )),
            ),
          );
        },
        itemCount: Budget.listBudget.length,
      ),
    );
  }
}
