import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/models/employee_model.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/widgets/user_details.dart';

class UsersListViewBuilder extends StatelessWidget {
  UsersListViewBuilder({super.key});
  List<EmployeeModal> users = [
    EmployeeModal(
      userImage: AppImages.userImage,
      userName: "Dimas Adi Saputro",
      jopTitle: "Senior UI/UX Designer at Twitter",
      workStauts: "Work during",
      experience: "S5 Years",
    ),
    EmployeeModal(
      userImage: AppImages.userImage,
      userName: "Dimas Adi Saputro",
      jopTitle: "Senior UI/UX Designer at Twitter",
      workStauts: "Work during",
      experience: "S5 Years",
    ),
    EmployeeModal(
      userImage: AppImages.userImage,
      userName: "Dimas Adi Saputro",
      jopTitle: "Senior UI/UX Designer at Twitter",
      workStauts: "Work during",
      experience: "S5 Years",
    ),
    EmployeeModal(
      userImage: AppImages.userImage,
      userName: "Dimas Adi Saputro",
      jopTitle: "Senior UI/UX Designer at Twitter",
      workStauts: "Work during",
      experience: "S5 Years",
    ),
    EmployeeModal(
      userImage: AppImages.userImage,
      userName: "Dimas Adi Saputro",
      jopTitle: "Senior UI/UX Designer at Twitter",
      workStauts: "Work during",
      experience: "S5 Years",
    ),
    EmployeeModal(
      userImage: AppImages.userImage,
      userName: "Dimas Adi Saputro",
      jopTitle: "Senior UI/UX Designer at Twitter",
      workStauts: "Work during",
      experience: "S5 Years",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return UserDetails(user: users[index]);
        },
      ),
    );
  }
}
