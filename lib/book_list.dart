import 'package:flutter/material.dart';

class BookList extends StatefulWidget {
  const BookList({super.key});

  @override
  State<BookList> createState() => _BookList();
}

class _BookList extends State<BookList> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [

        ]),
      ),
    );
  }
}
