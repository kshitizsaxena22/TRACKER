import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatefulWidget {
  @override
  _TransactionListState createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  @override
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 10000,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'New dog',
      amount: 1000,
      date: DateTime.now(),
    ),
  ];
  Widget build(BuildContext context) {
    return Column(
      children: _userTransactions.map((tx) {
        return Card(
            child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 15,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black12,
                  width: 2,
                ),
              ),
              padding: EdgeInsets.all(10),
              child: Text(
                'Rs : ${tx.amount}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.purple,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  tx.title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  DateFormat.yMMMMd().format(tx.date),
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                ),
              ],
            )
          ],
        ));
      }).toList(),
    );
  }
}
