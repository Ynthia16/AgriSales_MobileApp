import 'package:agrisale/components/onboard.dart';
import 'package:agrisale/screens/common_screens/login.dart';
import 'package:agrisale/components/tab_bar.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  late PageController _pageController;
  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _navigateToMyTabBar() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const MyTabBar()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _pageIndex = index;
                  });
                },
                itemCount: data.length,
                itemBuilder: (context, index) => OnBoardCard(
                  imageName: data[index].imageName,
                  title: data[index].title,
                  description: data[index].description,
                ),
              ),
            ),
            Row(
              children: [
                ...List.generate(
                    data.length,
                    (index) => Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: DotIndicator(isActive: index == _pageIndex),
                        )),
                const Spacer(),
                SizedBox(
                    height: 60,
                    // width: 85,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_pageIndex == data.length - 1) {
                          _navigateToMyTabBar();
                        } else {
                          _pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.ease,
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).primaryColor,
                          foregroundColor: Colors.white,
                          elevation: 5.5,
                          shape: const CircleBorder()),
                      child: const Icon(
                        Icons.arrow_right_alt_outlined,
                        color: Colors.white,
                        size: 45.0,
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
    // );
  }
}

class DotIndicator extends StatelessWidget {
  final bool isActive;

  const DotIndicator({
    Key? key,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: isActive ? 17 : 6,
      width: 5,
      decoration: BoxDecoration(
          color: isActive
              ? Theme.of(context).primaryColor
              : Theme.of(context).primaryColor.withOpacity(0.4),
          borderRadius: const BorderRadius.all(Radius.circular(12))),
    );
  }
}
