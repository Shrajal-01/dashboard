import 'package:flutter/material.dart';

class BannerCard extends StatelessWidget {
  const BannerCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.deepPurple, Colors.purpleAccent],
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Top Rating Project',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Trending project and high rating created by team',
                  style: TextStyle(color: Colors.white70),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Learn More'),
                ),
              ],
            ),
          ),

          Stack(
            children: [
              Image.asset(
                'assets/banner.png',
                width: 500,
                height: 400,
                alignment: Alignment.centerRight,
                fit: BoxFit.fill,
              ),
              // Image.asset(
              //   'assets/asadstacks.webp',
              //   width: 500,
              //   height: 400,
              //   alignment: Alignment.centerRight,
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
