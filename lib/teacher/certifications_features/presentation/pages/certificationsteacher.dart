import 'package:flutter/material.dart';
import 'package:quranteacher/teacher/certifications_features/presentation/widgets/addcerticate.dart';
import 'package:quranteacher/teacher/certifications_features/presentation/widgets/itemsoflist.dart';
import 'package:quranteacher/teacher/certifications_features/presentation/widgets/maintopcontiback.dart';
import 'package:quranteacher/teacher/certifications_features/presentation/widgets/pendingorverficheckconti.dart';
import 'package:quranteacher/teacher/certifications_features/presentation/widgets/textcertication.dart';
import 'package:quranteacher/teacher/certifications_features/presentation/widgets/verificationconti.dart';


class Certificationsteacher extends StatefulWidget {
  const Certificationsteacher({super.key});

  @override
  State<Certificationsteacher> createState() => _CertificationsteacherState();
}

class _CertificationsteacherState extends State<Certificationsteacher> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Maintopcontiback(),
                  Positioned(
                    top: 20,
                    left: 20,
                    right: 20,
                    child: Textcertication(),
                  ),
                  Positioned(
                    top: 110,
                    left: 20,
                    right: 20,
                    child: Pendingorverficheckconti(),
                  ),
                ],
              ),
              Itemsoflist(),
              SizedBox(height: 10),
              Addcerticate(),
              SizedBox(height: 10),
              Verificationconti(),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
