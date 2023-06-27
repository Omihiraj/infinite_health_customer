import 'package:flutter/material.dart';
import 'package:ih_customer/constants/colors.dart';

class AppDropDown<T> extends StatefulWidget {
  AppDropDown({
    Key? key,

    required this.items,
    this.value,
    this.onChanged,
    this.selectedItemBuilder,
    this.hint,
    this.horizontal,
  }) : super(key: key);

  final List<DropdownMenuItem<T>> items;
  final T? value;
  final DropdownButtonBuilder? selectedItemBuilder;
  final ValueChanged<T?>? onChanged;
  final String? hint;
  final double? horizontal;

  @override
  State<AppDropDown<T>> createState() => _AppDropDownState<T>();
}

class _AppDropDownState<T> extends State<AppDropDown<T>> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: widget.horizontal ?? 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: color81d1d4,
            ),
            child: Theme(
              data: Theme.of(context).copyWith(focusColor: color81d1d4),
              child: DropdownButton<T>(
                dropdownColor: Colors.white,
                value: widget.value,
                selectedItemBuilder: widget.selectedItemBuilder,
                isExpanded: true,
                icon: const Icon(
                  Icons.expand_more_rounded,
                  color: secondaryColor,
                ),
                items: widget.items,
                hint: Center(
                    child: Text(
                  widget.hint ?? 'Program 1',
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: secondaryColor,
                  ),
                )),
                underline: const SizedBox(),
                // onChanged: (value) {},
                onChanged: (value) => widget.onChanged?.call(value),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
