// import 'package:agrisale/components/common_components/button.dart';
// import 'package:agrisale/screens/farmers_screens/post_screen.dart';
// import 'package:flutter/material.dart';

// class ProductPost extends StatelessWidget {
//   const ProductPost({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           toolbarHeight: 130,
//           backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
//           title: const Text(
//             'Profile',
//             style: TextStyle(
//                 fontSize: 17.5,
//                 fontWeight: FontWeight.w600,
//                 color: Colors.white),
//           ),
//           centerTitle: true,
//           leading: IconButton(
//               onPressed: () => {Navigator.pop(context)},
//               icon: const Icon(Icons.arrow_back_outlined)),
//         ),
//         body: SingleChildScrollView(
//           // physics: const NeverScrollableScrollPhysics(),
//           child: Padding(
//             padding: const EdgeInsets.all(20.0),
//             child:
//                 Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//               const Text('Enter Image'),
//               SizedBox(
//                   height: 70,
//                   child: IconButton(
//                       color: Colors.green,
//                       iconSize: 80,
//                       onPressed: () {},
//                       icon: const Icon(Icons.post_add_sharp))),
//               const SizedBox(height: 35),
//               const Text(
//                 'The first image is the title image Grab and draw the image to change the order',
//                 style: TextStyle(
//                   fontWeight: FontWeight.w400,
//                 ),
//               ),
//               const SizedBox(height: 20),
//               const SizedBox(
//                 width: 300,
//                 child: TextField(
//                   textAlignVertical: TextAlignVertical.center,
//                   keyboardType: TextInputType.name,
//                   style: TextStyle(color: Colors.black, fontSize: 18),
//                   decoration: InputDecoration(
//                     hintText: 'Product name',
//                     border: OutlineInputBorder(
//                       borderSide:
//                           BorderSide(color: Color.fromARGB(255, 220, 220, 220)),
//                       borderRadius: BorderRadius.all(Radius.elliptical(14, 14)),
//                     ),
//                     contentPadding: EdgeInsets.fromLTRB(15, 3, 0, 0),
//                     hintStyle: TextStyle(
//                         color: Color.fromARGB(255, 208, 208, 208),
//                         fontSize: 18),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               const SizedBox(
//                 width: 300,
//                 child: TextField(
//                   textAlignVertical: TextAlignVertical.center,
//                   keyboardType: TextInputType.name,
//                   style: TextStyle(color: Colors.black, fontSize: 18),
//                   decoration: InputDecoration(
//                     hintText: 'Part available',
//                     border: OutlineInputBorder(
//                       borderSide:
//                           BorderSide(color: Color.fromARGB(255, 220, 220, 220)),
//                       borderRadius: BorderRadius.all(Radius.elliptical(14, 14)),
//                     ),
//                     contentPadding: EdgeInsets.fromLTRB(15, 3, 0, 0),
//                     hintStyle: TextStyle(
//                         color: Color.fromARGB(255, 208, 208, 208),
//                         fontSize: 18),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               const SizedBox(
//                 width: 300,
//                 child: TextField(
//                   textAlignVertical: TextAlignVertical.center,
//                   keyboardType: TextInputType.name,
//                   style: TextStyle(color: Colors.black, fontSize: 18),
//                   decoration: InputDecoration(
//                     hintText: 'Product details',
//                     border: OutlineInputBorder(
//                       borderSide:
//                           BorderSide(color: Color.fromARGB(255, 220, 220, 220)),
//                       borderRadius: BorderRadius.all(Radius.elliptical(14, 14)),
//                     ),
//                     contentPadding: EdgeInsets.fromLTRB(15, 3, 0, 0),
//                     hintStyle: TextStyle(
//                         color: Color.fromARGB(255, 208, 208, 208),
//                         fontSize: 18),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               const SizedBox(
//                 width: 300,
//                 child: TextField(
//                   textAlignVertical: TextAlignVertical.center,
//                   keyboardType: TextInputType.name,
//                   style: TextStyle(color: Colors.black, fontSize: 18),
//                   decoration: InputDecoration(
//                     hintText: 'Price',
//                     border: OutlineInputBorder(
//                       borderSide:
//                           BorderSide(color: Color.fromARGB(255, 220, 220, 220)),
//                       borderRadius: BorderRadius.all(Radius.elliptical(14, 14)),
//                     ),
//                     contentPadding: EdgeInsets.fromLTRB(15, 3, 0, 0),
//                     hintStyle: TextStyle(
//                         color: Color.fromARGB(255, 208, 208, 208),
//                         fontSize: 18),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 12),
//               const SizedBox(
//                   child:
//                       MyButton(buttonWord: 'ADD', screenName: MyPostScreen()))
//             ]),
//           ),
//         ));
//   }
// }

import 'package:agrisale/screens/farmers_screens/post_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:agrisale/models/product_model.dart';
import 'package:agrisale/RiverPod/product_provider.dart';
import 'dart:io';

class ProductPost extends ConsumerStatefulWidget {
  const ProductPost({Key? key}) : super(key: key);

  @override
  _ProductPostState createState() => _ProductPostState();
}

class _ProductPostState extends ConsumerState<ProductPost> {
  final nameController = TextEditingController();
  final partController = TextEditingController();
  final detailsController = TextEditingController();
  final priceController = TextEditingController();
  File? _image;

  Future<void> _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 130,
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        title: const Text(
          'Post Product',
          style: TextStyle(
            fontSize: 17.5,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => {Navigator.pop(context)},
          icon: const Icon(Icons.arrow_back_outlined),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Enter Image'),
              SizedBox(
                height: 70,
                child: IconButton(
                  color: Colors.green,
                  iconSize: 80,
                  onPressed: () {
                    _pickImage();
                  },
                  icon: const Icon(Icons.post_add_sharp),
                ),
              ),
              if (_image != null)
                Image.file(
                  _image!,
                  height: 150,
                  width: 150,
                ),
              const SizedBox(height: 35),
              const Text(
                'The first image is the title image. Grab and draw the image to change the order',
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: nameController,
                  textAlignVertical: TextAlignVertical.center,
                  keyboardType: TextInputType.name,
                  style: const TextStyle(color: Colors.black, fontSize: 18),
                  decoration: const InputDecoration(
                    hintText: 'Product name',
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 220, 220, 220)),
                      borderRadius: BorderRadius.all(Radius.elliptical(14, 14)),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(15, 3, 0, 0),
                    hintStyle: TextStyle(
                      color: Color.fromARGB(255, 208, 208, 208),
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: partController,
                  textAlignVertical: TextAlignVertical.center,
                  keyboardType: TextInputType.name,
                  style: const TextStyle(color: Colors.black, fontSize: 18),
                  decoration: const InputDecoration(
                    hintText: 'Part available',
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 220, 220, 220)),
                      borderRadius: BorderRadius.all(Radius.elliptical(14, 14)),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(15, 3, 0, 0),
                    hintStyle: TextStyle(
                      color: Color.fromARGB(255, 208, 208, 208),
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: detailsController,
                  textAlignVertical: TextAlignVertical.center,
                  keyboardType: TextInputType.multiline,
                  maxLines: 5,
                  style: const TextStyle(color: Colors.black, fontSize: 18),
                  decoration: const InputDecoration(
                    hintText: 'Details',
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 220, 220, 220)),
                      borderRadius: BorderRadius.all(Radius.elliptical(14, 14)),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(15, 3, 0, 0),
                    hintStyle: TextStyle(
                      color: Color.fromARGB(255, 208, 208, 208),
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: priceController,
                  textAlignVertical: TextAlignVertical.center,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(color: Colors.black, fontSize: 18),
                  decoration: const InputDecoration(
                    hintText: 'Price',
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 220, 220, 220)),
                      borderRadius: BorderRadius.all(Radius.elliptical(14, 14)),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(15, 3, 0, 0),
                    hintStyle: TextStyle(
                      color: Color.fromARGB(255, 208, 208, 208),
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  final product = Product(
                    imagePath: _image?.path ?? 'assets/images/placeho.jpg',
                    title: nameController.text,
                    price: 'Rwf ${priceController.text}',
                    unit: 'kg', // Modify as needed
                  );

                  ref.read(productProvider.notifier).addProduct(product);

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyPostScreen(),
                    ),
                  );
                },
                child: const Text('Post Product'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
