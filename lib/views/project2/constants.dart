import 'package:flutter/material.dart';

class SizedBox10 extends StatelessWidget {
  const SizedBox10({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 10.0,
    );
  }
}

class Divider1 extends StatelessWidget {
  const Divider1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      thickness: 1,
    );
  }
}

class ProfileInfoCard extends StatelessWidget {
  const ProfileInfoCard({
    super.key, required this.title, required this.infovalue,
  });

  final String title;
  final String infovalue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
          title,
          style: ktitleText,
        ),
        const SizedBox(
          height: 4.0,
        ),
         Text(
          infovalue,
          style: kvalueText,
        ),
        const SizedBox10(),
        const Divider1(),
        const SizedBox10(),
      ],
    );
  }
}

class EditPPTitle extends StatelessWidget {
  const EditPPTitle({
    super.key, required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Text(
          text,
          style: ktitleText,
        ),
        const SizedBox(
          height: 6.0,
        ),
      ],
    );
  }
}


const ktitleText = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 16.0,
  color: Colors.black54,
);

const kvalueText = TextStyle(
  fontSize: 20.0,
);

const InputDecoration kinputDec = InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  );
