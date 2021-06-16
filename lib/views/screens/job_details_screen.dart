import 'package:flutter/material.dart';
import 'package:jobbie/views/widgets/jobbie_button.dart';

class JobDetailsScreen extends StatelessWidget {
  static const route = '/job-details';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Microsoft'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Microsoft_logo.svg/480px-Microsoft_logo.svg.png',
                    width: 96,
                    height: 96,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Backend Developer',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    'Yangon, Myanmar',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'Posted on 11 Jun 2021',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white.withOpacity(0.1),
                        ),
                        child: Text('Full-Time'),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text('40 lakh/mo')
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Job Description',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  ...[
                    'Participate in overall product system design.',
                    'Work on new and existing products using latest technologies including: PHP 7.4 & Laravel 8 or Node.js 14 & Adonis 5.0.',
                    'Develop APIs for frontend Vue.js and for internal service purposes.',
                    'Build products with maintainable, extensible, and scalable codes.',
                    'Follow existing, further develop, or even propose new software design patterns to further improve the team-wide development processes.',
                    'Look for, evaluate, and implement the latest technology to improve development efficiency.'
                  ].map(
                    (e) => ListTile(
                      title: Text(
                        e,
                      ),
                      dense: true,
                      contentPadding: EdgeInsets.all(0),
                      minLeadingWidth: 0,
                      leading: Icon(
                        Icons.circle,
                        size: 8,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Requirements',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  ...[
                    'Must possess at least Bachelor degree or equivalent, majoring in Information Technology or Computer Science.',
                    'At least 3 years of experience working as Programmer',
                    'Have essential skills in PHP Laravel or Node.js Adonis',
                    'Experienced in MySQL and creating performant queries',
                    'Familiarity with good development practices such as OOP and SOLID principle',
                    'Familiarity with frontend technologies',
                    'Ability to work independently and strive to write readable and understandable code.',
                    'Familiarity with Jira, Bitbucket, and the Git Feature Branch Workflow',
                    'Familiarity in working with GCP products like GCE, Cloud Storage, Drive services, etc',
                    'Have Vue.js knowledge and General CSS knowledge will be an advantage',
                  ].map(
                    (e) => ListTile(
                      title: Text(
                        e,
                      ),
                      dense: true,
                      contentPadding: EdgeInsets.all(0),
                      minLeadingWidth: 0,
                      leading: Icon(
                        Icons.circle,
                        size: 8,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                child: JobbieButton(
                  title: 'Apply',
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
