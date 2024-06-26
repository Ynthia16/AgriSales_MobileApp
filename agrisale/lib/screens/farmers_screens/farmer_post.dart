import 'package:agrisale/components/common_components/button.dart';
import 'package:agrisale/screens/farmers_screens/post_screen.dart';
import 'package:flutter/material.dart';

class ProductPost extends StatelessWidget {
  const ProductPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 130,
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          title: const Text(
            'Profile',
            style: TextStyle(
                fontSize: 17.5,
                fontWeight: FontWeight.w600,
                color: Colors.white),
          ),
          centerTitle: true,
          leading: IconButton(
              onPressed: () => {Navigator.pop(context)},
              icon: const Icon(Icons.arrow_back_outlined)),
        ),
        body: SingleChildScrollView(
          // physics: const NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text('Enter Image'),
              SizedBox(
                  height: 70,
                  child: IconButton(
                      color: Colors.green,
                      iconSize: 80,
                      onPressed: () {},
                      icon: const Icon(Icons.post_add_sharp))),
              const SizedBox(height: 35),
              const Text(
                'The first image is the title image Grab and draw the image to change the order',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 20),
              const SizedBox(
                width: 300,
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  keyboardType: TextInputType.name,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  decoration: InputDecoration(
                    hintText: 'Product name',
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 220, 220, 220)),
                      borderRadius: BorderRadius.all(Radius.elliptical(14, 14)),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(15, 3, 0, 0),
                    hintStyle: TextStyle(
                        color: Color.fromARGB(255, 208, 208, 208),
                        fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const SizedBox(
                width: 300,
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  keyboardType: TextInputType.name,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  decoration: InputDecoration(
                    hintText: 'Part available',
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 220, 220, 220)),
                      borderRadius: BorderRadius.all(Radius.elliptical(14, 14)),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(15, 3, 0, 0),
                    hintStyle: TextStyle(
                        color: Color.fromARGB(255, 208, 208, 208),
                        fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const SizedBox(
                width: 300,
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  keyboardType: TextInputType.name,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  decoration: InputDecoration(
                    hintText: 'Product details',
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 220, 220, 220)),
                      borderRadius: BorderRadius.all(Radius.elliptical(14, 14)),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(15, 3, 0, 0),
                    hintStyle: TextStyle(
                        color: Color.fromARGB(255, 208, 208, 208),
                        fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const SizedBox(
                width: 300,
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  keyboardType: TextInputType.name,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  decoration: InputDecoration(
                    hintText: 'Price',
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 220, 220, 220)),
                      borderRadius: BorderRadius.all(Radius.elliptical(14, 14)),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(15, 3, 0, 0),
                    hintStyle: TextStyle(
                        color: Color.fromARGB(255, 208, 208, 208),
                        fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const SizedBox(
                  child:
                      MyButton(buttonWord: 'ADD', screenName: MyPostScreen()))
            ]),
          ),
        ));
  }
}
