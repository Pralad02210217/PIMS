import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
        centerTitle: true,
      ),
      body: AboutUsContent(),
    );
  }
}

class AboutUsContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.all(16.0),
          child: Image.asset(
            'assets/cst.jpeg', // Replace with the path to your logo image
            height: 150, // Set the height of the logo
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center, // Center text
            children: [
              Text(
                'About Us',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'The primary objective of the PIMS project is to eliminate the challenge of accessing academic information by designing a focused software solution. PIMS centralizes and streamlines the display of program and module information, making it easily accessible for students and faculty. This system enhances the educational experience by providing an organized and intuitive interface to access essential academic resources.',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'YourCustomFont', // Replace with the desired font family
                  color: Colors.black, // Change the text color to your preference
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.grey[200], // Box-like structure
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                'Developed By',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Aniketh Powdel',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                'Loday Tempa Gyeltshen',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                'Pralad Mishra',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                'Tshering Yangdon',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
