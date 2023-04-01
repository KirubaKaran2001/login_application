// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class LayoutBuild extends StatefulWidget {
  const LayoutBuild({super.key});

  @override
  _LayoutBuildState createState() => _LayoutBuildState();
}

List<Widget> bodyElements = [];
int count = 0;

class _LayoutBuildState extends State<LayoutBuild> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Center(child: Text('Home')),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text('A'),
                  Text('B'),
                  Text('C'),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ListView(
              children: <Widget>[
                Column(
                  children: bodyElements,
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.add),
        label: const Text('Add'),
        onPressed: () {
          count += 1;
          setState(() {
            addBodyElement(count);
          });
        },
      ),
    );
  }

  void addBodyElement(index) {
    bodyElements.add(
      Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 100,
              width: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Enter Your Details'),
                ),
              ),
            ),
            Container(
              height: 110,
              width: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Enter Your Details'),
                ),
              ),
            ),
            Container(
              height: 110,
              width: 110,
              child: const Center(
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Enter Your Details'),
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                setState(() {
                  bodyElements.removeAt(index);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
