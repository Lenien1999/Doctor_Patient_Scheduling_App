import 'package:doctor_patient_sch_app/screen/book_appointment.dart';
import 'package:doctor_patient_sch_app/screen/doctor_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

import '../constants/app_style.dart';
import '../constants/search_widget.dart';
import '../constants/textstyle.dart';
import '../controller/doctor_controller.dart/doctor_model.dart';

class DoctorsPage extends StatelessWidget {
  const DoctorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'All Doctors',
          style: textStyle(
              size: 24, weight: FontWeight.w600, color: AppColor.backColor()),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            const SearchWidget(
              prefix: 'Search a Doctor',
              trailingIcon: Icons.mic,
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: doctorList.length,
                  itemBuilder: (context, index) {
                    final items = doctorList[index];
                    return InkWell(
                      onTap: () {
                        Get.to(() {
                          return DoctorDetails(
                            doctors: items,
                          );
                        });
                      },
                      child: Container(
                        height: 205,
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromRGBO(210, 235, 231, 0.3),
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              items.image,
                              width: 150,
                              height: 150,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        items.name,
                                        style: textStyle(
                                            size: 18,
                                            weight: FontWeight.w600,
                                            color: Colors.black),
                                      ),
                                      Expanded(
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                                Icons.favorite_border_outlined,
                                                color: AppColor.bgColor())),
                                      )
                                    ],
                                  ),
                                  Text(
                                    items.description,
                                    style: textStyle(
                                            size: 12,
                                            weight: FontWeight.w400,
                                            color: Colors.grey)
                                        .copyWith(
                                      letterSpacing: 1,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Get.to(() {
                                            return   BookAppointment(doctor: items,);
                                          });
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: AppColor.backColor(),
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 15.0,
                                                left: 15,
                                                top: 8,
                                                bottom: 8),
                                            child: Text(
                                              'Book',
                                              style: textStyle(
                                                  size: 14,
                                                  weight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Ionicons.star,
                                            color: Colors.orange,
                                          ),
                                          const SizedBox(width: 8),
                                          Text('5.0',
                                              style: textStyle(
                                                  size: 16,
                                                  weight: FontWeight.w600,
                                                  color: Colors.black))
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
