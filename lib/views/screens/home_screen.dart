import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobbie/views/screens/my_profile_screen.dart';
import 'package:jobbie/views/widgets/job_item_card.dart';

class HomeScreen extends StatelessWidget {
  static const route = '/';
  static final jobs = [
    {
      'company': 'Microsoft',
      'title': 'Product Manager',
      'logoUrl':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Microsoft_logo.svg/480px-Microsoft_logo.svg.png',
    },
    {
      'company': 'Google',
      'title': 'UI/UX Designer',
      'logoUrl':
          'https://www.freepnglogos.com/uploads/google-logo-png/google-logo-icon-png-transparent-background-osteopathy-16.png',
    },
    {
      'company': 'Apple',
      'title': 'Backend Developer',
      'logoUrl':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Apple_logo_grey.svg/1724px-Apple_logo_grey.svg.png',
    },
    {
      'company': 'Microsoft',
      'title': 'Product Manager',
      'logoUrl':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Microsoft_logo.svg/480px-Microsoft_logo.svg.png',
    },
    {
      'company': 'Microsoft',
      'title': 'Product Manager',
      'logoUrl':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Microsoft_logo.svg/480px-Microsoft_logo.svg.png',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Jobbie'),
        actions: [
          TextButton(
            onPressed: () {
              Get.toNamed(MyProfileScreen.route);
            },
            child: CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  'https://media-exp1.licdn.com/dms/image/C5603AQHUTZXoeUKvBw/profile-displayphoto-shrink_400_400/0/1592802085398?e=1629331200&v=beta&t=jeIU12SbaYFWu2GDs-P2pJi6fLWRPDQToJpTggPJ7ko'),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white.withOpacity(0.2),
                    ),
                    child: TextField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        hintText: 'Find your dream job',
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white.withOpacity(0.2),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.filter_list,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Jobs for you',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('See all'),
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              height: 220,
              child: ListView.builder(
                itemCount: jobs.length,
                itemBuilder: (context, index) => JobItemCard(
                  company: jobs[index]['company'] ?? '',
                  jobTitle: jobs[index]['title'] ?? '',
                  companyLogoUrl: jobs[index]['logoUrl'] ?? '',
                ),
                scrollDirection: Axis.horizontal,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Applied jobs',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: jobs.length,
                itemBuilder: (context, index) => Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  color: Colors.white.withOpacity(0.15),
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: Image.network(
                        jobs[index]['logoUrl'] ?? '',
                        width: 48,
                        height: 48,
                      ),
                    ),
                    title: Text(
                      jobs[index]['title'] ?? '',
                      style: Get.textTheme.bodyText1?.copyWith(fontSize: 16),
                    ),
                    subtitle: Text(
                      jobs[index]['company'] ?? '',
                      style: Get.textTheme.subtitle1?.copyWith(fontSize: 12),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
