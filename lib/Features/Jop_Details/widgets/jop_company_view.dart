import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text12.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text14.dart';
import 'package:jobsque_jobfinder/Features/Home/data/models/jop_model.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/widgets/details_container.dart';

class JopCompanyView extends StatelessWidget {
  const JopCompanyView({super.key, required this.jopModel});
  final JopModel jopModel;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText14(title: "Contact Us"),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DeatialsContainer(
                title: "Email",
                subTitle: jopModel.companyEmail,
              ),
              DeatialsContainer(
                title: "Website",
                subTitle: jopModel.companyWebsite,
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          const CustomText14(title: "About Company"),
          const SizedBox(
            height: 16,
          ),
          CustomText12(
              text:
                  "${jopModel.aboutCompany}. Albans, Hertfordshire.We also have a US office in Boston, Massachusetts specialising in working closely with highly skilled individuals seeking their next career move within Next Gen Tech, Backend Engineering, and Artificial Intelligence.We recently celebrated our first decade in business and over the years have been recognised with several industry awards including 'Best Staffing Firm to Work For 2018'​ at the SIA Awards for the third consecutive year and ‘Business of the Year 2017’ at the SME Hertfordshire Business Awards.Our teams of specialists operate across all areas of Technology and Digital, including Java, JavaScript, Python, .Net, DevOps & SRE, SDET, Artificial Intelligence, Machine Learning, AI, Digital, Quantum Computing, Hardware Acceleration, Digital, Charity, Fintech, and the Public Sector.")
        ],
      ),
    );
  }
}
