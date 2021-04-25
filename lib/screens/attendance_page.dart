import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class AttendancePage extends StatelessWidget {
  final String attendanceText = 'Good Job You Are Safe.......!';
  final slider = CircularPercentIndicator(
    animation: true,
    radius: 180,
    lineWidth: 25.0,
    percent: 0.8,
    backgroundColor: Colors.pinkAccent,
    progressColor: Color(0xFF42f5c5),
    center: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '80%',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 36),
          ),
          Text(
            'Present',
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.w200),
          ),
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF081631),
      appBar: AppBar(
        backgroundColor: Color(0XFF081631),
        backwardsCompatibility: true,
        centerTitle: true,
        title: Text('Attendance'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Friday',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    letterSpacing: 2,
                    fontWeight: FontWeight.w300),
              ),
              RichText(
                text: TextSpan(
                  text: '16',
                  style: TextStyle(
                    letterSpacing: 0.5,
                    fontSize: 44,
                    fontWeight: FontWeight.bold,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'th',
                      style: TextStyle(
                        textBaseline: TextBaseline.alphabetic,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: ' April 2021',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        wordSpacing: 1,
                        letterSpacing: 1.5,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.white,
                thickness: 1.5,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Overall Attendance',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    letterSpacing: 2.5,
                    wordSpacing: 1.5,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFF1D2C4B),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        slider,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Color(0xFF42f5c5),
                                  radius: 14,
                                ),
                                Text(
                                  'Attended',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      letterSpacing: 1.5),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.pinkAccent,
                                  radius: 14,
                                ),
                                Text(
                                  'Skipped',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      letterSpacing: 1.5),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      attendanceText,
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          wordSpacing: 1.5,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 70,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF1D2C4B), width: 2.5),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '100',
                          style: TextStyle(
                              letterSpacing: 1.5,
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w900),
                        ),
                        Text(
                          'Total',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w200),
                        ),
                      ],
                    ),
                    VerticalDivider(
                      color: Colors.white,
                      indent: 8,
                      endIndent: 8,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '80',
                          style: TextStyle(
                              letterSpacing: 1.5,
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w900),
                        ),
                        Text(
                          'Attended',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w200),
                        ),
                      ],
                    ),
                    VerticalDivider(
                      color: Colors.white,
                      indent: 8,
                      endIndent: 8,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '20',
                          style: TextStyle(
                              letterSpacing: 1.5,
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w900),
                        ),
                        Text(
                          'Skipped',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w200),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Divider(
                color: Colors.white,
                thickness: 1.5,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Subjects',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    letterSpacing: 2.5,
                    wordSpacing: 1.5,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 15.0),
              SubjectAttendanceWidget(
                color: Colors.pink,
                subject: 'Maths',
                attended: 8,
                totalclass: 10,
              ),
              SizedBox(
                height: 15.0,
              ),
              SubjectAttendanceWidget(
                  totalclass: 10,
                  attended: 8,
                  subject: 'Communications',
                  color: Colors.green),
              SizedBox(
                height: 15.0,
              ),
              SubjectAttendanceWidget(
                  totalclass: 10,
                  attended: 7,
                  subject: 'Web Design',
                  color: Colors.blue),
              SizedBox(
                height: 15.0,
              ),
              SubjectAttendanceWidget(
                  totalclass: 10,
                  attended: 9,
                  subject: 'Data Structures',
                  color: Colors.yellow),
              SizedBox(
                height: 15.0,
              ),
              SubjectAttendanceWidget(
                  totalclass: 10,
                  attended: 6,
                  subject: 'Analog Electronics',
                  color: Colors.cyan),
              SizedBox(
                height: 15.0,
              ),
              SubjectAttendanceWidget(
                  totalclass: 10,
                  attended: 10,
                  subject: 'App Design',
                  color: Colors.red),
            ],
          ),
        ),
      ),
    );
  }
}

class SubjectAttendanceWidget extends StatelessWidget {
  SubjectAttendanceWidget(
      {@required this.totalclass,
      @required this.attended,
      @required this.subject,
      @required this.color});
  final String subject;
  // ignore: non_constant_identifier_names
  final int totalclass;
  final int attended;
  final Color color;
  @override
  Widget build(BuildContext context) {
    double percent = attended / totalclass;
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Color(0xFF1D2C4B),
        borderRadius: BorderRadius.all(Radius.elliptical(25, 20)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                subject,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
            ],
          ),
          LinearPercentIndicator(
            lineHeight: 10,
            animation: true,
            trailing: Text(
              '${percent * 100}%',
              style: TextStyle(
                  color: color, fontSize: 20, fontWeight: FontWeight.bold),
            ),
            percent: percent,
            backgroundColor: Color(0xFF081631),
            progressColor: color,
          ),
          Text(
            'You have attended $attended out of $totalclass classes',
            style:
                TextStyle(color: Colors.white, fontSize: 16, wordSpacing: 1.5),
          )
        ],
      ),
    );
  }
}
