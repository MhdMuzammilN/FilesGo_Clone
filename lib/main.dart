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
        child: Scaffold(body: HomePage()),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 53, 52, 52),
      child: const Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [FilesSearchBar(), Recent(), Categories()],
        ),
      ),
    );
  }
}

class Recent extends StatelessWidget {
  const Recent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 15,
        ),
        const Text(
          "Recent",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    height: 140,
                    width: 140,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Snapchat",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  const Text("Images",
                      style: TextStyle(color: Colors.white, fontSize: 10))
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    height: 140,
                    width: 140,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Screenshots",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  const Text("Images",
                      style: TextStyle(color: Colors.white, fontSize: 10))
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    height: 140,
                    width: 140,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "WhatsApp Images",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  const Text("Images",
                      style: TextStyle(color: Colors.white, fontSize: 10))
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

class FilesSearchBar extends StatelessWidget {
  const FilesSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
              color: Color.fromARGB(255, 35, 34, 34)),
          height: 40,
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
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 15,
        ),
        const Text(
          "Categories",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                color: Color.fromARGB(255, 35, 34, 34),
              ),
              height: 60,
              width: 175,
              child: const Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.file_download_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Downloads",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "22 GB",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                color: Color.fromARGB(255, 35, 34, 34),
              ),
              height: 60,
              width: 175,
              child: const Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.file_download_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Images",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "22 GB",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                color: Color.fromARGB(255, 35, 34, 34),
              ),
              height: 60,
              width: 175,
              child: const Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.video_collection_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Videos",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "27 GB",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                color: Color.fromARGB(255, 35, 34, 34),
              ),
              height: 60,
              width: 175,
              child: const Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.audiotrack_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Audio",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "110 MB",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                color: Color.fromARGB(255, 35, 34, 34),
              ),
              height: 60,
              width: 175,
              child: const Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.file_download_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Downloads",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "22 GB",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                color: Color.fromARGB(255, 35, 34, 34),
              ),
              height: 60,
              width: 175,
              child: const Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.file_download_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Images",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "22 GB",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
