import 'package:doctor_patient_sch_app/constants/bottombar_navigation.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../constants/app_style.dart';
import '../constants/navigation_widget.dart';
import '../constants/textstyle.dart';

class PatientDetails extends StatefulWidget {
  const PatientDetails({super.key});

  @override
  State<PatientDetails> createState() => _PatientDetailsState();
}

class _PatientDetailsState extends State<PatientDetails> {
  String selectedValue = 'Male'; // Default selected value

  List<String> dropdownItems = [
    'Male',
    'Female',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Patient Details',
          style: textStyle(
              size: 24, weight: FontWeight.w500, color: AppColor.backColor()),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your Full Name',
                      style: textStyle(
                          size: 22,
                          weight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey.withOpacity(0.1),
                          prefixIcon: Icon(
                            Ionicons.person_add,
                            color: AppColor.bgColor(),
                          ),
                          hintText: 'Full Name',
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Gender',
                      style: textStyle(
                          size: 22,
                          weight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20)),
                        fillColor: Colors.grey.withOpacity(0.1),
                        prefixIcon: Icon(
                          Ionicons.people_circle,
                          color: AppColor.bgColor(),
                        ),
                      ),
                      value: selectedValue,
                      items: ['Male', 'Female', 'Other']
                          .map((gender) => DropdownMenuItem<String>(
                                value: gender,
                                child: Text(gender),
                              ))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value!;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Your Age',
                      style: textStyle(
                          size: 22,
                          weight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey.withOpacity(0.1),
                          prefixIcon: Icon(
                            Ionicons.grid_outline,
                            color: AppColor.bgColor(),
                          ),
                          hintText: 'Age',
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Write Your Problem',
                      style: textStyle(
                          size: 22,
                          weight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    TextFormField(
                      maxLines: 5,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey.withOpacity(0.1),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: NavigationWidget(
                title: 'Next',
                tap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        Future.delayed(const Duration(seconds: 3), () {
                          // Task completed, close the dialog
                          Navigator.of(context).pop();
                          // Navigate to another page (e.g., LoginScreen)
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const BottomNavigation();
                          }));
                        });
                        return AlertDialog(
                          content: SizedBox(
                            height: 400,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/dne.png',
                                  color: AppColor.bgColor(),
                                  height: 80,
                                  width: 80,
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Congratulations!',
                                  style: textStyle(
                                      size: 20,
                                      weight: FontWeight.w500,
                                      color: AppColor.backColor()),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Appointment successfully booked. You will receive a notification and the doctor you selected will contact you..',
                                  textAlign: TextAlign.center,
                                  style: textStyle(
                                      size: 16,
                                      weight: FontWeight.w500,
                                      color:
                                          const Color.fromRGBO(33, 33, 33, 1)),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const CircularProgressIndicator(),
                              ],
                            ),
                          ),
                        );
                      });

                  // Get.to(() => const PatientDetails());
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
