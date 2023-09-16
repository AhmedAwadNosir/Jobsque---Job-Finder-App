import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Features/Authentication/functions/show_snack_bar.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text_field_section.dart';

class CustomPhoneNumberTextField extends StatefulWidget {
  const CustomPhoneNumberTextField({
    super.key,
    this.tilteColor,
    this.sympol,
    this.title,
  });
  final Color? tilteColor;
  final String? sympol;
  final String? title;
  @override
  State<CustomPhoneNumberTextField> createState() =>
      _CustomPhoneNumberTextFieldState();
}

class _CustomPhoneNumberTextFieldState
    extends State<CustomPhoneNumberTextField> {
  final countryPicker = const FlCountryCodePicker();

  CountryCode? egPhoneCode =
      const CountryCode(name: "Egypt", code: "Eg", dialCode: "+20");
  CountryCode? usPhoneCode =
      const CountryCode(name: "United States", code: "US", dialCode: "+1");
  final TextEditingController textEditingController = TextEditingController(text: "0100-666-7234");
 
  @override
  Widget build(BuildContext context) {
    return CustomTextFieldSection(
      title: widget.title ?? "No.Handphone",
      sympol: widget.sympol ?? "*",
      titleColor: widget.tilteColor,
      textInputType: TextInputType.number,
      controller: textEditingController,
      prefixICon: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(width: 16),
          SizedBox(
              child: usPhoneCode != null
                  ? usPhoneCode!.flagImage()
                  : const SizedBox()),
          IconButton(
              onPressed: () async {
                try {
                  final pcode =
                      await countryPicker.showPicker(context: context);
                  setState(() {
                    usPhoneCode = pcode;
                    showSnackBar(
                        "${usPhoneCode!.dialCode} ${textEditingController.value.text.trim()}",
                        context);
                  });
                } catch (e) {
                  showSnackBar("please choose your country ", context);
                }
              },
              icon: const Icon(
                Iconsax.arrow_down_1,
                size: 16,
              )),
          const SizedBox(
            height: 24,
            child: VerticalDivider(
              thickness: 1,
              color: AppColors.appNeutralColors200,
            ),
          )
        ],
      ),
    );
  }
}
