// import 'package:flutter/material.dart';
// import 'package:agrisale/components/farmer_components/post.dart';
// import 'package:agrisale/components/farmer_components/search_bar.dart';

// class MyPostScreen extends StatelessWidget {
//   const MyPostScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.fromLTRB(20.0, 10, 10, 8),
//           child: Column(
//             children: [
//               const Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: SizedBox(height: 70, child: MySearchBarFarmer()),
//               ),
//               const SizedBox(height: 10),
//               InkWell(
//                 onTap: () {
//                   Navigator.pop(context);
//                 },
//                 child: const SizedBox(
//                     child: Text('All products i posted(12)',
//                         style: TextStyle(fontSize: 15))),
//               ),
//               const SizedBox(height: 2),
//               const Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: PostCard(),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:agrisale/components/farmer_components/post.dart';
import 'package:agrisale/components/farmer_components/search_bar.dart';
import 'package:agrisale/RiverPod/crop_provider.dart';

class MyPostScreen extends ConsumerWidget {
  const MyPostScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cropState = ref.watch(cropProvider);
    final cropNotifier = ref.read(cropProvider.notifier);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 10, 10, 8),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(height: 70, child: MySearchBarFarmer()),
              ),
              const SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text('All products i posted(${cropState.crops.length})',
                    style: const TextStyle(fontSize: 15)),
              ),
              const SizedBox(height: 2),
              cropState.isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 40,
                        childAspectRatio: 0.8,
                      ),
                      itemCount: cropState.crops.length,
                      itemBuilder: (context, index) {
                        final crop = cropState.crops[index];
                        return PostCard(
                          image: crop['image'],
                          title: crop['title'],
                          price: crop['price'],
                          unit: crop['unit'],
                          onDelete: () => cropNotifier.deleteCrop(crop['id']),
                        );
                      },
                    ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to the ProductPost screen to add a new crop
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
