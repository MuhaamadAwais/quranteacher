// screens/teacher_attendance_screen.dart - FIXED with TOP ListView!
import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/students/topcommon_container.dart';
import 'package:quranteacher/teacher/teacherdashboard_feature/presentation/widgets/attancdacemodel.dart';
import 'package:quranteacher/teacher/teacherdashboard_feature/presentation/widgets/attendancehistoryscreen.dart';
import 'package:quranteacher/teacher/teacherdashboard_feature/presentation/widgets/sessionhistory.dart';

class TeacherAttendanceScreen extends StatefulWidget {
  final String sessionName;
  const TeacherAttendanceScreen({super.key, required this.sessionName});

  @override
  State<TeacherAttendanceScreen> createState() =>
      _TeacherAttendanceScreenState();
}

class _TeacherAttendanceScreenState extends State<TeacherAttendanceScreen> {
  bool changecolor = false;

  List<Attancdacemodel> students = [
    Attancdacemodel(
      id: '1',
      name: 'Ahmed Ali',
      rollNo: 'ST001',
      group: 'Juz 1',
      badge: 'VIP',
      date: DateTime.now(),
    ),
    Attancdacemodel(
      id: '2',
      name: 'Fatima Khan',
      rollNo: 'ST002',
      group: 'Juz 1',
      badge: 'Regular',
      date: DateTime.now(),
    ),
    Attancdacemodel(
      id: '3',
      name: 'Bilal Ahmed',
      rollNo: 'ST003',
      group: 'Juz 2',
      badge: 'New',
      date: DateTime.now(),
    ),
    Attancdacemodel(
      id: '4',
      name: 'Ayesha Noor',
      rollNo: 'ST004',
      group: 'Juz 1',
      badge: 'VIP',
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    int presentCount = students.where((s) => s.isPresent).length;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: ListView(
          // ← SIRF EK TOP LISTVIEW!
          children: [
            // 1. Top Container
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                gradient: LinearGradient(
                  colors: [AppColors.topmaingreen, AppColors.bottommaingreen],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Expanded(
                        flex: 2,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: Colors.white.withOpacity(0.3),
                            ),
                          ),
                          child: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: AppColors.textWhite,
                            size: 24,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 10),

                    Expanded(
                      flex: 6,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Attendance List",
                            style: TextStyle(
                              color: AppColors.textWhite,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),

                          Text(
                            "Student list for student",
                            style: TextStyle(
                              color: AppColors.textWhite,
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // 2. Session Header
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [AppColors.topmiddle, AppColors.bottommiddle],
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  Icon(Icons.today_outlined, color: Colors.white, size: 50),
                  Text(
                    widget.sessionName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '23 March 2026 | Juz 1 Class',
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ],
              ),
            ),

            // 3. Title & History Button
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Today Students \nAttendance",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.toplast,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AttendanceHistoryScreen(),
                        ),
                      );
                    },
                    icon: Icon(Icons.history),
                    label: Text('History', style: TextStyle(fontSize: 16)),
                  ),
                ],
              ),
            ),

            SizedBox(height: 16),

            // 4. Students List - INSIDE same ListView!
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: ListView.builder(
                shrinkWrap: true, // ← Must for nested ListView
                physics: NeverScrollableScrollPhysics(), // ← No separate scroll
                itemCount: students.length,
                itemBuilder: (context, index) {
                  final student = students[index];
                  return Card(
                    margin: EdgeInsets.only(bottom: 12),
                    elevation: 4,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.all(20),
                      leading: Stack(
                        children: [
                          CircleAvatar(
                            backgroundColor: AppColors.toplast,
                            child: Text(
                              student.rollNo[2],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          if (student.badge == 'VIP')
                            Positioned(
                              top: 0,
                              right: 0,
                              child: Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 16,
                              ),
                            ),
                        ],
                      ),
                      title: Text(
                        student.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Roll: ${student.rollNo} | Group: ${student.group}',
                          ),
                          Text(
                            'Badge: ${student.badge}',
                            style: TextStyle(color: AppColors.toplast),
                          ),
                        ],
                      ),
                      trailing: student.isPresent
                          ? Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: AppColors.toplast,
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 4,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.done_sharp,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                    Text(
                                      'Present',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          : Checkbox(
                              value: student.isPresent,
                              onChanged: (value) {
                                setState(() {
                                  changecolor = value ?? false;
                                  students[index].isPresent = value ?? false;
                                });
                              },
                              activeColor: AppColors.toplast,
                            ),
                    ),
                  );
                },
              ),
            ),

            SizedBox(height: 100), // Bottom button ke liye space
          ],
        ),

        // Bottom Save Button - OUTSIDE ListView
        bottomNavigationBar: Container(
          margin: EdgeInsets.all(16),
          child: ElevatedButton.icon(
            icon: Icon(Icons.save, color: Colors.white, size: 24),
            label: Text(
              'Save Attendance (${students.where((s) => s.isPresent).length}/${students.length})',
              style: TextStyle(color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.toplast,
              padding: EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: () {
              final savedSession = SessionHistory(
                className: widget.sessionName,
                classTitle: 'Juz 1 Complete',
                date: '24 Mar 2026',
                time: '4:00 PM',
                totalStudents: students.length,
                presentStudents: students.where((s) => s.isPresent).length,
              );

              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text('Attendance Saved! ✅')));
            },
          ),
        ),
      ),
    );
  }
}
