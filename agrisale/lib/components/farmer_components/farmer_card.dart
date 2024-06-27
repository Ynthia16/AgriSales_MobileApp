import 'package:agrisale/screens/farmers_screens/orders_screen.dart';
import 'package:agrisale/screens/farmers_screens/post_screen.dart';
import 'package:flutter/material.dart';

class FarmerCard extends StatelessWidget {
  const FarmerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(10.0, 5, 10, 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _SmallCard(),
          SizedBox(width: 20),
          _SmallCard2(),
        ],
      ),
    );
  }
}

class _SmallCard extends StatelessWidget {
  const _SmallCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const MyPostScreen()),
        );
      },
      child: SizedBox(
        height: 100,
        width: 150,
        child: Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(255, 178, 175, 175),
                  spreadRadius: 1,
                  blurRadius: 10)
            ],
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(14.0),
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.fromLTRB(12.0, 5, 12, 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Total products posted:',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text('12',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.green)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SmallCard2 extends StatelessWidget {
  const _SmallCard2({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const FarmerOrderScreen()),
        );
      },
      child: SizedBox(
        height: 100,
        width: 160,
        child: Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(255, 178, 175, 175),
                  spreadRadius: 1,
                  blurRadius: 10)
            ],
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(14.0),
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.fromLTRB(12.0, 5, 12, 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Total products Requested:',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text('4',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.green)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
