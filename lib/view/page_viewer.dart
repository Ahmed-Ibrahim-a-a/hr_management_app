import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:hr_management_app/view/home.dart';

class PageViewer extends StatelessWidget {
  const PageViewer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          PageView(
            children: [
              HomePage(),
            ],
          ),
          Positioned(
            bottom: 0,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45),
                    topRight: Radius.circular(45)),
                color: Color.fromRGBO(31, 40, 71, 1),
              ),
              width: MediaQuery.of(context).size.width,
              height: 90,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      AntDesign.like1,
                      color: Colors.white,
                    ),
                    Icon(
                      AntDesign.user,
                      color: Colors.white30,
                    ),
                    Icon(
                      AntDesign.menu_fold,
                      color: Colors.white30,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
