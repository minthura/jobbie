import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobbie/views/widgets/jtext_form_field.dart';

class MyProfileScreen extends StatefulWidget {
  static const route = '/my-profile';

  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  _MyProfileScreenState createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 48,
                backgroundImage: NetworkImage(
                  'https://media-exp1.licdn.com/dms/image/C5603AQHUTZXoeUKvBw/profile-displayphoto-shrink_400_400/0/1592802085398?e=1629331200&v=beta&t=jeIU12SbaYFWu2GDs-P2pJi6fLWRPDQToJpTggPJ7ko',
                ),
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    JTextFormField(
                      labelText: 'First Name',
                    ),
                    JTextFormField(
                      labelText: 'Last Name',
                    ),
                    JTextFormField(
                      labelText: 'Email',
                    ),
                    JTextFormField(
                      labelText: 'Phone number',
                    ),
                    JTextFormField(
                      labelText: 'Date of birth',
                    ),
                    JTextFormField(
                      labelText: 'Gender',
                    ),
                    JTextFormField(
                      labelText: 'Address',
                    ),
                    JTextFormField(
                      labelText: 'Nationality',
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Experience',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('Edit'),
                  ),
                ],
              ),
              ...List.generate(
                4,
                (index) => Container(
                  width: double.infinity,
                  child: Card(
                    margin: EdgeInsets.symmetric(vertical: 4),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    color: Colors.white.withOpacity(0.15),
                    child: Container(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Senior Mobile Apps Developer',
                            style:
                                Get.textTheme.bodyText1?.copyWith(fontSize: 16),
                          ),
                          Text(
                            'Ongo Mobile Money',
                            style:
                                Get.textTheme.subtitle1?.copyWith(fontSize: 12),
                          ),
                          Text(
                            'Jul 2016 - Present',
                            style:
                                Get.textTheme.subtitle1?.copyWith(fontSize: 12),
                          ),
                          Text(
                            '5 Years',
                            style:
                                Get.textTheme.subtitle1?.copyWith(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Education',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('Edit'),
                  ),
                ],
              ),
              ...List.generate(
                2,
                (index) => Container(
                  width: double.infinity,
                  child: Card(
                    margin: EdgeInsets.symmetric(vertical: 4),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    color: Colors.white.withOpacity(0.15),
                    child: Container(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Thanlyin Technological University',
                            style:
                                Get.textTheme.bodyText1?.copyWith(fontSize: 16),
                          ),
                          Text(
                            'Bachelor\'s Degree in Engineering (Electrical/Electronic)',
                            style:
                                Get.textTheme.subtitle1?.copyWith(fontSize: 12),
                          ),
                          Text(
                            'Myanmar',
                            style:
                                Get.textTheme.subtitle1?.copyWith(fontSize: 12),
                          ),
                          Text(
                            '2012',
                            style:
                                Get.textTheme.subtitle1?.copyWith(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Skills',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('Edit'),
                  ),
                ],
              ),
              SizedBox(
                width: double.infinity,
                height: 80,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) => Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    color: Colors.white.withOpacity(0.15),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Android'),
                          Text(
                            'Advanced',
                            style:
                                Get.textTheme.subtitle1?.copyWith(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                  scrollDirection: Axis.horizontal,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Uploaded resume',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('Browse'),
                  ),
                ],
              ),
              SizedBox(
                width: double.infinity,
                child: Card(
                  margin: EdgeInsets.symmetric(vertical: 4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  color: Colors.white.withOpacity(0.15),
                  child: Container(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'MinThuraCV_v2.pdf',
                          style:
                              Get.textTheme.bodyText1?.copyWith(fontSize: 16),
                        ),
                        Text(
                          '12 Jun 2021 1:06PM',
                          style:
                              Get.textTheme.subtitle1?.copyWith(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
