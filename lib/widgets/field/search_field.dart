import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:wisecrypto_slicing/config/themes/themes.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: AppText.textNormal.copyWith(color: AppColor.gray),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 16,
        ),
        hintText: 'Cari. . .',
        hintStyle: AppText.textNormal.copyWith(color: AppColor.gray2),
        suffixIcon: const Icon(
          IconlyLight.search,
          color: AppColor.primary,
          size: 16,
        ),
        fillColor: AppColor.white,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: AppColor.aquaSpring,
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: AppColor.dark,
            width: 1,
          ),
        ),
      ),
    );
  }
}
