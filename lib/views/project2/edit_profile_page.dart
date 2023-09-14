import 'package:flutter/material.dart';
import 'package:hngx_project1/views/project2/constants.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage(
      {super.key,
      required this.fullName,
      required this.slackUsername,
      required this.githubHandle,
      required this.bioText});

  final String fullName;
  final String slackUsername;
  final String githubHandle;
  final String bioText;

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    String fullName = widget.fullName;
    String slackUsername = widget.slackUsername;
    String githubHandle = widget.githubHandle;
    String bioText = widget.bioText;

    TextEditingController fnController = TextEditingController(text: fullName);
    TextEditingController suController =
        TextEditingController(text: slackUsername);
    TextEditingController ghController =
        TextEditingController(text: githubHandle);
    TextEditingController btController = TextEditingController(text: bioText);

    void _sendDataBack(BuildContext context) {
      String finalFullName = fnController.text;
      String finalSlackUsername = suController.text;
      String finalGithubHandle = ghController.text;
      String finalBioText = btController.text;

      if (finalFullName == "" || finalFullName == " " ||
          finalSlackUsername == "" || finalSlackUsername == " " ||
          finalGithubHandle == "" || finalGithubHandle == " " ||
          finalBioText == "" || finalBioText == " ") {
        Future.delayed(Duration.zero, () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  // icon: const Align(
                  //   alignment: Alignment.centerLeft,
                  //   child: Icon(
                  //     Icons.close,
                  //     size: 10.0,
                  //   ),
                  // ),
                  // title: const Text(
                  //   'Notice',
                  //   textAlign: TextAlign.left,
                  //   style: TextStyle(
                  //     color: Color(0xFF0F28A9),
                  //     fontSize: 15.0,
                  //     fontFamily: "Roboto",
                  //   ),
                  // ),
                  content: const Text(
                    // "Are you sure you want to leave without saving changes?",
                    "You can't leave the TextField empty",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color(0xFF000000),
                    ),
                  ),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: const Text(
                        'OK',
                        style: TextStyle(
                          color: Color(0xFF0F28A9),
                        ),
                      ),
                    ),
                    // TextButton(
                    //   onPressed: () {},
                    //   child: const Text(
                    //     'Sure',
                    //     style: TextStyle(
                    //       color: Color(0xFF0F28A9),
                    //     ),
                    //   ),
                    // ),
                  ],
                );
              });
        });
      } else {
        Navigator.pop(
          context,
          [finalFullName, finalSlackUsername, finalGithubHandle, finalBioText],
        );
      }
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Future.delayed(Duration.zero, () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      // icon: const Align(
                      //   alignment: Alignment.centerLeft,
                      //   child: Icon(
                      //     Icons.close,
                      //     size: 10.0,
                      //   ),
                      // ),
                      // title: const Text(
                      //   'Notice',
                      //   textAlign: TextAlign.left,
                      //   style: TextStyle(
                      //     color: Color(0xFF0F28A9),
                      //     fontSize: 15.0,
                      //     fontFamily: "Roboto",
                      //   ),
                      // ),
                      content: const Text(
                        "Are you sure you want to leave without saving changes?",
                        // "You can't leave the TextField empty",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Color(0xFF000000),
                        ),
                      ),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'No'),
                          child: const Text(
                            'No',
                            style: TextStyle(
                              color: Color(0xFF0F28A9),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            // Navigator.push(context,
                            //     MaterialPageRoute(builder: (context) {
                            //   return const ProfileView();
                            // }));
                            Navigator.pop(context);
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'Yes',
                            style: TextStyle(
                              color: Color(0xFF0F28A9),
                            ),
                          ),
                        ),
                      ],
                    );
                  });
            });
          },
          icon: const Icon(
            Icons.arrow_back_rounded,
          ),
        ),
        title: const Text("Edit Profile"),
        actions: [
          TextButton(
            onPressed: () {
              // Navigator.pop(context, (context){
              //   print(fnController.text.toString());
              //   return fnController.text;
              // });

              _sendDataBack(context);

              // print(fnController.text);
            },
            child: const Text(
              "SAVE",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const EditPPTitle(
                  text: "Full Name",
                ),
                TextField(
                    controller: fnController,
                    onChanged: (value) {
                      fullName = value;
                    },
                    decoration: kinputDec),
                const SizedBox10(),
                const EditPPTitle(
                  text: "Slack Username",
                ),
                TextField(
                    controller: suController,
                    onChanged: (value) {
                      slackUsername = value;
                    },
                    decoration: kinputDec),
                const SizedBox10(),
                const EditPPTitle(
                  text: "GitHub Handle",
                ),
                TextField(
                    controller: ghController,
                    onChanged: (value) {
                      githubHandle = value;
                    },
                    decoration: kinputDec),
                const SizedBox10(),
                const EditPPTitle(
                  text: "Bio",
                ),
                TextField(
                  controller: btController,
                  onChanged: (value) {
                    bioText = value;
                  },
                  maxLines: 5,
                  decoration: const InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
