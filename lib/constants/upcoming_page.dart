import 'package:doctor_patient_sch_app/constants/app_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

import '../screen/book_appointment.dart';
import 'textstyle.dart';

class UpComingAppointment extends StatelessWidget {
  const UpComingAppointment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      child: Container(
        padding: const EdgeInsets.all(13),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color.fromARGB(255, 140, 196, 187)),
                    child: Image.asset(
                      'assets/images/dr1.png',
                      fit: BoxFit.cover,
                    )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'doctors.name',
                      style: textStyle(
                          size: 24,
                          weight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    Row(
                      children: [
                        Text(
                          'Messaging--',
                          style: textStyle(
                              size: 14,
                              weight: FontWeight.w600,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          height: 25,
                          child: OutlinedButton(
                            style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.all(0),
                                side: BorderSide(color: AppColor.bgColor())),
                            onPressed: () {},
                            child: Text(
                              'upcoming',
                              style: textStyle(
                                  size: 10,
                                  weight: FontWeight.w600,
                                  color: AppColor.bgColor()),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        Text(
                          'Dec 12 2002',
                          style: textStyle(
                              size: 15,
                              weight: FontWeight.w600,
                              color: Colors.grey),
                        ),
                        Container(
                          width: 1, // Width of the divider line
                          height: 13, // Height of the divider line
                          color: Colors.grey, // Color of the divider line
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                        ),
                        Text(
                          '12:50am',
                          style: textStyle(
                              size: 14,
                              weight: FontWeight.w500,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
                CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 217, 223, 222),
                  radius: 30,
                  child: Icon(
                    Ionicons.chatbox_ellipses,
                    color: AppColor.backColor(),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Divider(
              height: 1,
              color: Colors.grey.withOpacity(0.3),
              indent: 5,
              endIndent: 5,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 35,
                  child: OutlinedButton(
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        side: BorderSide(color: AppColor.bgColor())),
                    onPressed: () {},
                    child: Text(
                      'Cancel Appointment',
                      style: textStyle(
                          size: 13,
                          weight: FontWeight.w600,
                          color: AppColor.bgColor()),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Expanded(
                  child: SizedBox(
                    height: 35,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.backColor(),
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                      ),
                      onPressed: () {
                    
                                          Get.to(() {
                                            // return const BookAppointment();
                                          });
                                        
                      },
                      child: Text(
                        'Reschedule Appointment',
                        style: textStyle(
                            size: 13,
                            weight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
