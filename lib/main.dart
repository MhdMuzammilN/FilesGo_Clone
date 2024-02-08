import 'package:flutter/material.dart';

void main() {
  runApp(const FileHome());
}

class FileHome extends StatelessWidget {
  const FileHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(body: FilesSearchBar()),
      ),
    );
  }
}

class FilesSearchBar extends StatelessWidget {
  const FilesSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 53, 52, 52),
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
                color: Color.fromARGB(255, 35, 34, 34)),
            height: 40,
            margin: const EdgeInsets.all(10),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      '''Seach "confirmation"''',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
