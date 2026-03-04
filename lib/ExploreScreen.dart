import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';

class ExploreScreen extends StatelessWidget {
  ExploreScreen({super.key});

  
  final List<String> categories = [
    "Most Popular",
    "Historical",
    "Beaches",
    "Desert",
    "Nile"
  ];

  
  final List<Map<String, dynamic>> places = [
    {
      "title": "Giza Pyramids",
      "location": "Cairo, Egypt",
      "image":
          Image.asset(
                            "assets/images/image3.jpeg",
                            height: 180,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
          
      "price": "\$20"
    },
    {
      "title": "Blue Hole",
      "location": "Dahab, Egypt",
      "image":
            Image.network(
                            "https://upload.wikimedia.org/wikipedia/commons/thumb/6/61/Great_Blue_Hole.jpg/500px-Great_Blue_Hole.jpg",
                            height: 180,
                            width: double.infinity,
                            fit: BoxFit.cover,
                            alignment: AlignmentGeometry.center,
                          ),
          
          
      "price": "\$50"
    },
    {
      "title": "Siwa Oasis",
      "location": "Matrouh, Egypt",
      "image":
            Image.asset(
                             "assets/images/image2.jpeg",
                              height: 180,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
      "price": "\$40"
    },
    {
      "title": "Luxor Temple",
      "location": "Luxor, Egypt",
      "image":
          Image.network(
                            "https://www.pyramidsdaytour.com/wp-content/uploads/2025/07/Egypt-Luxor-Temple1-SH.jpg",
                            height: 180,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
      "price": "\$35"
    },
     {
      "title": "Nubian Village",
      "location": "Aswan, Egypt",
      "image":
          Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKD-vwe3jjMBXOuiuIoIOVNy8jBsxg5wcJ_g&s",
                            height: 180,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
      "price": "\$45"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(230, 194, 194, 194),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("Hi, Heba  ",
                    style: TextStyle(
                      fontSize: 15,
                      color: const Color.fromARGB(136, 80, 79, 79),
                    )
                    ),
                Text("👋",
                    style: TextStyle(
                      fontSize: 13,
                    )
                    ),
              ],
            ),
            Text("Explore Egypt",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 0, 0, 0),
                )
                ),
            
          ],
        ),
        actions: [
          Padding(
        padding: const EdgeInsets.only(right: 16.0), 
        child: CircleAvatar(
          radius: 18,
          backgroundImage: AssetImage("assets/images/image1.jpeg"), 
        ),
      ),
        ],
      ),
      body: SafeArea(

          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8, top: 15, bottom: 10),
                child: SizedBox(
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: OutlinedButton(
                          onPressed: () {
                            print(categories[index]); 
                          },
                          
                          style: OutlinedButton.styleFrom(
                            maximumSize: index == 0 ? Size(150, 40) : Size(110, 40),
                            side: BorderSide(color: Colors.teal),
                            backgroundColor: index == 0 ? Colors.teal : Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                          
                            ),
                          ),
                          child: Text(categories[index], 
                              style: TextStyle(
                                color: index == 0 ? Colors.white :  Colors.teal,
                              )
                              ),
                        ),
                      );
                    },
                  ),
                ),
              ),
          
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 15, 12, 10),
                child: Text("popular Destinations", 
                    style: TextStyle(
                      fontSize: 20,
                       fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                    )
                    ),
              ),
          
              Expanded(
                child: ListView.builder(
                  itemCount: places.length,
                  itemBuilder: (context, index) {
                    final place = places[index];
          
                    return Container(
                      margin:
                          const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                      
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 5,
                            color: Colors.black12,
                          )
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                              ),
                              child: 
                                place["image"]!
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                      
                                Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      place["title"]!,
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Icon( 
                                          Icons.location_on,
                                          size: 16,
                                          color: Colors.grey[600],
                                        ),
                                        Text(
                                          place["location"]!,
                                          style: const TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                AnimatedButton(
                                  text: "Book ${place["price"]}",
                                  onPress: () {
                                    print("Booked ${place["title"]}");
                                  },
                                  height: 40,
                                  width: 100,
                                  backgroundColor: Colors.teal,
                                  selectedBackgroundColor:
                                      Colors.teal.shade700,
                                  borderRadius: 7,
                                  borderColor: Colors.teal,
                                  textStyle: const TextStyle(
                                    color: Colors.deepPurple,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ), 
      ),
    );
  }
}