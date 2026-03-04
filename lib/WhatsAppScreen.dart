import 'package:flutter/material.dart';



class WhatsAppScreen extends StatelessWidget {
  const WhatsAppScreen({super.key});
  final List<String> filters = const [
    "All",
    "Unread",
    "Groups",
    "Friends",
    "College",
    "Family",
    "Community"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(230, 7, 94, 84),
        title: const Text("WhatsApp",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            )),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert, color: Colors.white),
          ),
        ],
      ),
      body:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: filters.length,
                    itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 6, vertical: 8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16),
                      decoration: BoxDecoration(
                        color: index == 0
                          ? Colors.green[100]
                          : Colors.grey[300],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        filters[index],
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                    ),
                  );
                                },
                              ),
                ),
                Expanded(
            child: ListView.builder(
              itemCount: 20, 
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage("assets/images/image1.jpeg"),
                    radius: 25,
                  ),
                  title: const Text(
                    "Heba Mahmoud ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: const Text(
                    "السلام عليكم، ازيك يا هندسة؟",
                  ),
                  trailing: const Text(
                    "10:30 PM",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                );
              },
            ),
          ),
              ],
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(230, 10, 143, 112),
        child: const Icon(Icons.message, color: Colors.white),
      )
    );
  }
}

