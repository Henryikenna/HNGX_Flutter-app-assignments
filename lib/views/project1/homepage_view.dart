import 'package:flutter/material.dart';
import 'package:hngx_project1/views/project1/github_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const String url = "https://github.com/Henryikenna";

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage("assets/pfp.png"),
              radius: 60,
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              "henry.dart",
              style: TextStyle(
                fontSize: 26.0,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80.0),
              child: SizedBox(
                height: 55,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const GitHubWebView(
                          url: url,
                        );
                        // return const WebViewApp();
                      }));
                    },
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 146, 9, 184),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/githubicon.png",
                          width: 45,
                          height: 45,
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Open GitHub",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900),
                            ),
                            Icon(
                              Icons.open_in_new_rounded,
                              size: 10.0,
                              color: Colors.white,
                            ),
                          ],
                        )
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
