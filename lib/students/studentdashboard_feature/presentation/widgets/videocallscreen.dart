import 'package:flutter/material.dart';
import 'package:quranteacher/students/appanimations.dart';

class Videocallscreen extends StatefulWidget {
  const Videocallscreen({super.key, required this.height, required this.width});
  final double height;
  final double width;

  @override
  State<Videocallscreen> createState() => _VideocallscreenState();
}

class _VideocallscreenState extends State<Videocallscreen>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _simpllefade;

  bool isMicOn = false;
  bool isVideoOn = false;
  bool isHandRaised = false;
  bool isParticipantVisible = false;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    final controller = AppAnimations(_animationController);

    _simpllefade = controller.simplefade(
      begin: 0.8,
      end: 1.0,
      curve: Curves.easeInOut,
    );

    _animationController.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void showMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), duration: const Duration(seconds: 1)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = widget.height;
    final width = widget.width;

    return SafeArea(
      child: Scaffold(
        body: Container(
          height: height,
          width: width,
          color: Colors.black,
          child: Column(
            children: [
              /// TOP BAR
              Card(
                elevation: 5,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Container(
                  height: height * 0.1,
                  width: width,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: const CircleAvatar(
                          backgroundColor: Colors.black12,
                          child: Icon(Icons.arrow_back, color: Colors.white),
                        ),
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Topic Name",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Teacher: Sheikh Muhammad",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      //const SizedBox(width: 20),
                      // show red color
                      ScaleTransition(
                        scale: _simpllefade,
                        child: Container(
                          height: height * 0.04,
                          width: width * 0.09,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(142, 255, 82, 82),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Stack(
                            children: [
                              Center(
                                child: Container(
                                  height: height * 0.015,
                                  width: width * 0.03,
                                  decoration: BoxDecoration(
                                    color: Colors.redAccent,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              /// BODY
              Expanded(
                child: Stack(
                  children: [
                    /// CENTER PERSON
                    Positioned(
                      top: height * 0.27,
                      left: width * 0.34,
                      child: const CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.greenAccent,
                        child: Icon(
                          Icons.person,
                          size: 50,
                          color: Colors.white,
                        ),
                      ),
                    ),

                    Positioned(
                      top: height * 0.41,
                      left: width * 0.24,
                      child: const Text(
                        "Sheikh Muhammad",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),

                    /// PARTICIPANT LIST (TOGGLE)
                    if (isParticipantVisible)
                      Positioned(
                        top: 20,
                        right: 10,
                        child: SizedBox(
                          width: width * 0.25,
                          height: height * 0.6,
                          child: ListView.separated(
                            itemCount: 7,
                            itemBuilder: (context, index) {
                              return Container(
                                height: height * 0.14,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: const Color.fromARGB(
                                      255,
                                      30,
                                      243,
                                      37,
                                    ),
                                  ),
                                ),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.person_add_alt_rounded,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    Text(
                                      "M Asrar",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "student",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              );
                            },
                            separatorBuilder: (context, index) =>
                                SizedBox(height: height * 0.02),
                          ),
                        ),
                      ),

                    /// BOTTOM CONTROL PANEL
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: height * 0.22,
                        width: width,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          border: Border(
                            top: BorderSide(color: Colors.grey, width: 2),
                          ),
                          gradient: LinearGradient(
                            colors: [Colors.white10, Colors.white12],
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: height * 0.02),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                /// MIC
                                Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          isMicOn = !isMicOn;
                                        });
                                        showMessage(
                                          isMicOn
                                              ? "Mic Turned ON"
                                              : "Mic Turned OFF",
                                        );
                                      },
                                      child: CircleAvatar(
                                        radius: 25,
                                        backgroundColor: isMicOn
                                            ? Colors.green
                                            : Colors.white12,
                                        child: Icon(
                                          isMicOn ? Icons.mic : Icons.mic_off,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      "Mic",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),

                                /// VIDEO
                                Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          isVideoOn = !isVideoOn;
                                        });
                                        showMessage(
                                          isVideoOn
                                              ? "Video Started"
                                              : "Video Stopped",
                                        );
                                      },
                                      child: CircleAvatar(
                                        radius: 25,
                                        backgroundColor: isVideoOn
                                            ? Colors.green
                                            : Colors.white12,
                                        child: Icon(
                                          isVideoOn
                                              ? Icons.videocam
                                              : Icons.videocam_off,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      "Video",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),

                                /// RAISE HAND
                                Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          isHandRaised = !isHandRaised;
                                        });
                                        showMessage(
                                          isHandRaised
                                              ? "Hand Raised ✋"
                                              : "Hand Lowered",
                                        );
                                      },
                                      child: CircleAvatar(
                                        radius: 25,
                                        backgroundColor: isHandRaised
                                            ? Colors.orange
                                            : Colors.white12,
                                        child: const Icon(
                                          Icons.back_hand,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      "Rise Hand",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),

                                /// PARTICIPANT BUTTON
                                Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          isParticipantVisible =
                                              !isParticipantVisible;
                                        });
                                        showMessage(
                                          isParticipantVisible
                                              ? "Participants Opened"
                                              : "Participants Closed",
                                        );
                                      },
                                      child: CircleAvatar(
                                        radius: 25,
                                        backgroundColor: isParticipantVisible
                                            ? Colors.blue
                                            : Colors.white12,
                                        child: const Icon(
                                          Icons.people,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      "Participant",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            SizedBox(height: height * 0.02),

                            /// LEAVE CALL BUTTON
                            Container(
                              height: height * 0.06,
                              width: width * 0.8,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.call_end, color: Colors.white),
                                  SizedBox(width: 10),
                                  Text(
                                    "Leave Call",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
