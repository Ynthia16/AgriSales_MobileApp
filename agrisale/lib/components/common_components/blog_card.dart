import 'package:flutter/material.dart';

class BlogCard extends StatelessWidget {
  const BlogCard({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> bloggerData = [
      {
        'imagePath': 'assets/images/crop6.jpg',
        'title': 'Corn Crop marketing strategies',
        'author': 'Aristote Gahima',
        'date': 'Jan 3 2020'
      },
      {
        'imagePath': 'assets/images/crop2.jpg',
        'title': 'Rice Cultivation Tips',
        'author': 'John Doe',
        'date': 'Feb 10 2021'
      },
      {
        'imagePath': 'assets/images/crop3.jpg',
        'title': 'Rice Cultivation Tips',
        'author': 'John Doe',
        'date': 'Feb 10 2021'
      },
      {
        'imagePath': 'assets/images/crop4.jpg',
        'title': 'Rice Cultivation Tips',
        'author': 'John Doe',
        'date': 'Feb 10 2021'
      },
      {
        'imagePath': 'assets/images/crop5.jpg',
        'title': 'Rice Cultivation Tips',
        'author': 'John Doe',
        'date': 'Feb 10 2021'
      },
      {
        'imagePath': 'assets/images/crop6.jpg',
        'title': 'Rice Cultivation Tips',
        'author': 'John Doe',
        'date': 'Feb 10 2021'
      },
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 250, // Ensures the height constraint
        child: ListView.separated(
          separatorBuilder: (context, _) => const SizedBox(width: 12),
          scrollDirection: Axis.horizontal,
          itemCount: bloggerData.length,
          itemBuilder: (BuildContext context, int index) {
            final data = bloggerData[index];
            return BloggerCard(
              imagePath: data['imagePath']!,
              title: data['title']!,
              author: data['author']!,
              date: data['date']!,
            );
          },
        ),
      ),
    );
  }
}

class BloggerCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String author;
  final String date;

  const BloggerCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.author,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 250,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(color: Color.fromARGB(255, 249, 249, 249), blurRadius: 3)
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(15.0), //  Will Adjust the values as needed
        ),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 150, // Ensures the height constraint
            width: 250, // Ensures the width constraint
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(14.0),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(10.0, 5, 8, 5),
            child: SizedBox(
                child: Text('Corn Crop marketing strategies',
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w600))),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 5, 8, 5),
            child: Row(
              children: [
                Text(author,
                    style: const TextStyle(
                        fontSize: 10, fontWeight: FontWeight.w300)),
                const SizedBox(width: 50),
                Text(date,
                    style: const TextStyle(
                        fontSize: 10, fontWeight: FontWeight.w300))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
