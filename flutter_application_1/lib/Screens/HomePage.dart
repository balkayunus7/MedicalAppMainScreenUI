import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          "Hello,",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(color: Colors.black),
                        ),
                      ),
                      Text(
                        "Yunus Balka",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple[100],
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(
                      Icons.person_add_outlined,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListTile(
                tileColor: Colors.pink[200],
                dense: true,
                title: Text(
                  "How do you feel?",
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
                subtitle: Text(
                  "Fill out your medical card right now",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: Colors.black87),
                ),
                leading: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTECrl_OuC0MYCx14Anz92uE6HwXX_Ic8x8Qw&usqp=CAU"),
                trailing: Icon(Icons.chevron_right_outlined),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


/*
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class ListtileLearn extends StatelessWidget {
  const ListtileLearn({Key? key}) : super(key: key);

  final imageUrl = "https://picsum.photos/200/300";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Image.network(
                      imageUrl,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    dense: true,
                    subtitle: const Text("How do you use card?"),
                    leading: const Icon(Icons.money_off_outlined),
                    trailing: const Icon(Icons.chevron_right_outlined),
                    onTap: () {},
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
*/