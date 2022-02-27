import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List quotes = [
    Quote(author: 'Oscar wilder', text: 'text my quotes dotcom'),
    Quote(author: 'Oscar wilder', text: 'text my quotes dotcom'),
    Quote(author: 'Oscar wilder', text: 'text my quotes dotcom'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) {
          return Text('${quote.text} - ${quote.author}');
        }).toList(),
      ),
    );
  }
}
