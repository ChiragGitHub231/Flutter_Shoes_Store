import 'package:flutter/material.dart';
import 'package:shoes_store/pages/homepage.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/user.jpg'),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'User Profile',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              itemProfile('Name', 'Chirag Bhundiya', Icons.account_circle),
              const SizedBox(
                height: 10,
              ),
              itemProfile('Email Id', 'chirag123@gmail.com', Icons.email),
              const SizedBox(
                height: 10,
              ),
              itemProfile('Phone', '1234567890', Icons.phone),
              const SizedBox(
                height: 10,
              ),
              itemProfile('Address', 'College Road, Nadiad',
                  Icons.location_on_outlined),
              const SizedBox(
                height: 10,
              ),
              itemProfile('Password', 'chirag123', Icons.password),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(15),
                    ),
                    child: const Text('Back')),
              )
            ],
          ),
        ),
      ),
    );
  }

  itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 5),
                color: Colors.deepOrange.withOpacity(.2),
                spreadRadius: 2,
                blurRadius: 10)
          ]),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
      ),
    );
  }
}
