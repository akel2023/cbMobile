// ignore_for_file: unused_local_variable, prefer_const_constructors, prefer_const_literals_to_create_immutables, dead_code

import 'package:flutter/material.dart';

class SplashViewer extends StatelessWidget {
  const SplashViewer({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("Spalsh Viewwer");

    final scaffoldKey = GlobalKey<ScaffoldState>();
    bool animate = false;
    double opacityLevel = 1.0;

    return GestureDetector(
      onTap: () => (),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [],
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AnimatedCrossFade(
                          duration: const Duration(seconds: 1),
                          firstChild: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.network(
                              'https://www.cabukmama.com/Data/EditorFiles/cabukmama_logo.png',
                              width: 300,
                              height: 200,
                              fit: BoxFit.contain,
                              alignment: Alignment(0, 0),
                            ),
                          ),
                          secondChild: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.network(
                              'https://www.cabukmama.com/Data/EditorFiles/cabukmama_logo.png',
                              width: 300,
                              height: 200,
                              fit: BoxFit.contain,
                              alignment: Alignment(0, 0),
                            ),
                          ),
                          crossFadeState: animate
                              ? CrossFadeState.showFirst
                              : CrossFadeState.showSecond,
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [],
                    ),
                  )
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
