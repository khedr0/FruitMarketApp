import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String label;
  final String hint;
  final bool isRequired;
  final bool hasCountryCode;

  const CustomTextField({
    super.key,
    required this.label,
    required this.hint,
    this.isRequired = false,
    this.hasCountryCode = false,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  String selectedCode = 'EG +20';

  final List<String> countryCodes = [
    'EG +20',
    'KSA +966',
    'UAE +971',
    'USA +1',
    'GB +44',
    'DE +49',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Label
        Row(
          children: [
            Text(
              widget.label,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            if (widget.isRequired)
              const Text(
                ' *',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.red,
                ),
              ),
          ],
        ),
        const SizedBox(height: 6),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xff858D9A)),
            borderRadius: BorderRadius.circular(30),
            color: Colors.transparent,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: IntrinsicHeight(
            // أضف دي هنا 👇
            child: Row(
              children: [
                if (widget.hasCountryCode) ...[
                  const Icon(Icons.arrow_drop_down, color: Color(0xff858D9A)),
                  DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: selectedCode,
                      icon: const SizedBox.shrink(),
                      style: const TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                      ),
                      items: countryCodes.map((code) {
                        return DropdownMenuItem(
                          value: code,
                          child: Text(code),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          selectedCode = value!;
                        });
                      },
                    ),
                  ),
                  const VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                    width: 20,
                    indent: 5,
                    endIndent: 5,
                  ),
                ],
                Expanded(
                  child: TextField(
                    keyboardType: widget.hasCountryCode
                        ? TextInputType.phone
                        : TextInputType.text,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: widget.hint,
                      hintStyle: const TextStyle(
                        color: Colors.black87,
                        fontSize: 13,
                      ),
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
