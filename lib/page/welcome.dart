import 'package:baykot/components/app_styles.dart';
import 'package:baykot/components/app_text.dart';
import 'package:baykot/constatnts/colors.dart';
import 'package:baykot/data/data.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomePage extends StatelessWidget {
  final _controller = PageController();

  WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blColor,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: pages.length,
              itemBuilder: (context, index) {
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 140),
                    child: Column(
                      children: [
                        if (pages[index]['image'] != null)
                          Image.asset(
                            pages[index]['image'],
                            height: 300,
                          ),
                        const SizedBox(height: 55),
                        Center(
                          child: Text(
                            pages[index]['mainText'],
                            style: pages[index]['mainStyle'],
                          ),
                        ),
                        const SizedBox(height: 10),
                        ...pages[index]['subTexts'].map<Widget>((subText) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              subText['text'],
                              textAlign: TextAlign.center,
                              style: subText['style'],
                            ),
                          );
                        }).toList(),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: SmoothPageIndicator(
              controller: _controller,
              count: pages.length,
              effect: const SwapEffect(
                activeDotColor: bColor,
                dotColor: greyColor,
                spacing: 20,
                dotWidth: 9,
                dotHeight: 9,
              ),
            ),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) => NextPage(),),);
            },
            child: Center(
              child: Container(
                width: 355,
                height: 50,
                decoration: ShapeDecoration(
                  gradient: const LinearGradient(
                    colors: [violet, fviolet],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Center(
                  child: Text(
                    AppText.containertext,
                    style: AppStyles.containertextstyle,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
