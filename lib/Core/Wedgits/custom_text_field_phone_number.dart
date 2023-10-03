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
    this.onSubmited,
    this.onChanged,
    this.content,
  });
  final Color? tilteColor;
  final String? sympol;
  final String? title;
  final Function(String)? onSubmited;
  final Function(String)? onChanged;
  final String? content;
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

  @override
  Widget build(BuildContext context) {
    return CustomTextFieldSection(
      onSubmited: widget.onSubmited,
      onChanged: widget.onChanged,
      title: widget.title ?? "No.Handphone",
      sympol: widget.sympol ?? "*",
      titleColor: widget.tilteColor,
      textInputType: TextInputType.number,
      content: widget.content,
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
                    showSnackBar("${usPhoneCode!.dialCode} ", context);
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
