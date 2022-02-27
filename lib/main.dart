import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

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
    Quote(author: 'Oscar wilder', text: 'text my quotes dotcom text my quote'),
    Quote(author: 'Oscar wilder', text: 'text my quotes dotcom text my quote'),
    Quote(author: 'Oscar wilder', text: 'text my quotes dotcom text my quote'),
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
          return QuoteCard(quote: quote);
        }).toList(),
      ),
    );
  }
}
