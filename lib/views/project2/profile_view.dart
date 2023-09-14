import 'package:flutter/material.dart';
import 'package:hngx_project1/views/project2/constants.dart';
import 'package:hngx_project1/views/project2/edit_profile_page.dart';

// List pageNames = [
//   "fullName",
//   "slackUsername",
//   "githubHandle",
//   "bioText"
// ];

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  String fullName = "Unegbu Henry Ikenna";
  String slackUsername = "henry.dart";
  String githubHandle = "@Henryikenna";
  String bioText =
      "Hi, My name is Henry. A Logo & Graphics Designer || Web Developer (HTML/Tailwind CSS/JS) || Mobile App Developer (Dart/Flutter).";

  void goToSecondPage(BuildContext context) async {
    List<String> result =
        await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return EditProfilePage(
        fullName: fullName,
        slackUsername: slackUsername,
        githubHandle: githubHandle,
        bioText: bioText,
      );
    }));
    
    // print(result);
    // var result2 =
    //     await Navigator.push(context, MaterialPageRoute(builder: (context) {
    //   return EditProfilePage(
    //     fullName: fullName,
    //     slackUsername: slackUsername,
    //     githubHandle: githubHandle,
    //     bioText: bioText,
    //   );
    // }));

    setState(() {
      fullName = result[0];
      slackUsername = result[1];
      githubHandle = result[2];
      bioText = result[3];
    });

  }

  // void goToSecondPageSU(BuildContext context) async {
  //   final result =
  //       await Navigator.push(context, MaterialPageRoute(builder: (context) {
  //     return EditProfilePage(
  //       slackUsername: slackUsername,
  //     );
  //   }));

  //   setState(() {
  //     slackUsername = result;
  //   });

  //   print(result);
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfileInfoCard(
                    title: "Full Name",
                    infovalue: fullName,
                  ),
                  ProfileInfoCard(
                    title: "Slack Username",
                    infovalue: slackUsername,
                  ),
                  ProfileInfoCard(
                    title: "GitHub Handle",
                    infovalue: githubHandle,
                  ),
                  const Text(
                    "Bio",
                    style: ktitleText,
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    bioText,
                    style: const TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                  const SizedBox10(),
                  const Divider1(),
                  const SizedBox10(),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: TextButton(
                      onPressed: () {
                        goToSecondPage(context);
                        // goToSecondPageSU(context);
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.blue)),
                      child: const Text(
                        "Edit Profile",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
