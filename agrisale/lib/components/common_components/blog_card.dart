import 'package:flutter/material.dart';

class BlogCard extends StatelessWidget {
  const BlogCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 250, // Ensures the height constraint
        child: ListView.separated(
          separatorBuilder: (context, _) => const SizedBox(width: 12),
          scrollDirection: Axis.horizontal,
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) => const BloggerCard(),
        ),
      ),
    ));
    // );
  }
}

class BloggerCard extends StatelessWidget {
  const BloggerCard({super.key});

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
          Radius.circular(15.0), // Adjust the values as needed
        ),
        color: Colors.white,
      ),
      // color: Colors.green,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 150, // Ensures the height constraint
              width: 250, // Ensures the width constraint
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/crop1.png'),
                    fit: BoxFit.cover,
                  ),
                  // border: Border.all(color: Colors.green, width: 2.0),
                  borderRadius: BorderRadius.all(
                    Radius.circular(14.0),
                  ),
                  // color: Colors.green,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10.0, 5, 8, 5),
              child: SizedBox(
                  child: Text('Corn Crop marketing strategies',
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w600))),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.fromLTRB(10.0, 5, 8, 5),
              child: Expanded(
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.stretch,
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text('By: Aristote Gahima',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w300)),
                    SizedBox(width: 50),
                    Text('Jan 3 2020',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w300))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
