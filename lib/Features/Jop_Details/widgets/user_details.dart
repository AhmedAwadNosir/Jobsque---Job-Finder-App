import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text12.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text14.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/models/employee_model.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({
    super.key,
    required this.user,
  });
  final EmployeeModal user;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 36,
                width: 36,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(user.userImage),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText14(title: user.userName),
                  CustomText12(
                    text: user.jopTitle,
                  ),
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText12(text: user.workStauts),
                  CustomText12(
                    text: user.experience,
                    color: AppColors.appPrimaryColors500,
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: AppColors.appNeutralColors200,
          )
        ],
      ),
    );
  }
}
