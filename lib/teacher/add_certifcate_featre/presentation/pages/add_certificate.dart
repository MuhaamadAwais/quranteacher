import 'package:flutter/material.dart';
import 'package:quranteacher/teacher/add_certifcate_featre/presentation/widgets/addbackgroundconti.dart';
import 'package:quranteacher/teacher/add_certifcate_featre/presentation/widgets/addverticationconti.dart';
import 'package:quranteacher/teacher/add_certifcate_featre/presentation/widgets/btnbacktext.dart';
import 'package:quranteacher/teacher/add_certifcate_featre/presentation/widgets/cancelbtn.dart';
import 'package:quranteacher/teacher/add_certifcate_featre/presentation/widgets/certificatedetails.dart';
import 'package:quranteacher/teacher/add_certifcate_featre/presentation/widgets/submitbtn.dart';
import 'package:quranteacher/teacher/add_certifcate_featre/presentation/widgets/uploaddocument.dart';


class AddCertificate extends StatefulWidget {
  const AddCertificate({super.key});

  @override
  State<AddCertificate> createState() => _AddCertificateState();
}

class _AddCertificateState extends State<AddCertificate> {
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
                  Addbackgroundconti(),
                  Positioned(
                    left: 20,
                    top: 20,
                    right: 20,
                    child: Btnbacktext(),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Certificatedetails(),
              SizedBox(height: 10),
              Uploaddocument(),
              SizedBox(height: 10),
              Addverticationconti(),
              SizedBox(height: 10),
              Submitbtn(),
              SizedBox(height: 10),
              Cancelbtn(),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
