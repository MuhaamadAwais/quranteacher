// screens/teacher_attendance_screen.dart
import 'package:flutter/material.dart';
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
    return Scaffold(
      backgroundColor: Colors.grey[100],

      // appBar: AppBar(
      //   title: Text(
      //     '${widget.sessionName} Attendance',
      //     style: TextStyle(fontWeight: FontWeight.bold),
      //   ),
      //   backgroundColor: Colors.teal,
      //   foregroundColor: Colors.white,
      //   actions: [
      //     Chip(
      //       label: Text('$presentCount/${students.length}'),
      //       backgroundColor: Colors.white,
      //     ),
      //   ],
      // ),
      body: Column(
        children: [
          TopcommonContainer(
            title: "${widget.sessionName} Attendance",
            subTitle:
                '       Students Mark attendance:   $presentCount/${students.length}',
          ),
          // Session Header
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.teal, Colors.teal[300]!],
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
                    fontSize: 20,
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
          SizedBox(height: 16),
          // title and history button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Today Students \nAttendance",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
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
          SizedBox(height: 16),
          // Students List
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(16),
              itemCount: students.length,
              itemBuilder: (context, index) {
                final student = students[index];
                return Card(
                  elevation: 4,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Stack(
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.all(20),
                        leading: Stack(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.blue[100],
                              child: Text(
                                student.rollNo[2],
                                style: TextStyle(fontWeight: FontWeight.bold),
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
                              style: TextStyle(color: Colors.orange),
                            ),
                          ],
                        ),
                        trailing: student.isPresent
                            ? Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Colors.greenAccent,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(width: 7),

                                    Icon(
                                      Icons.done_sharp,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                    Text(
                                      'selected',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                    SizedBox(width: 7),
                                  ],
                                ),
                              )
                            : Checkbox(
                                value: student.isPresent,
                                onChanged: (value) => setState(() {
                                  if (value == true) {
                                    setState(() {
                                      changecolor = true;
                                    });
                                  } else {
                                    setState(() {
                                      changecolor = false;
                                    });
                                  }
                                  students[index].isPresent = value ?? false;
                                }),
                                activeColor: Colors.teal,
                              ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),

      bottomNavigationBar: Container(
        margin: EdgeInsets.all(16),
        child: ElevatedButton.icon(
          icon: Icon(Icons.save),
          label: Text(
            'Save Attendance (${students.where((s) => s.isPresent).length}/${students.length})',
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.teal,
            padding: EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: () {
            // Save logic + History mein add
            final savedSession = SessionHistory(
              className: widget.sessionName,
              classTitle: 'Juz 1 Complete',
              date: '24 Mar 2026',
              time: '4:00 PM',
              totalStudents: students.length,
              presentStudents: students.where((s) => s.isPresent).length,
            );

            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Attendance Saved! ✅ & added in History!'),
              ),
            );
          },
        ),
      ),
    );
  }
}
