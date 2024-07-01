import 'package:flutter/material.dart';
import 'package:test2ptc/core/utils/color_manger.dart';

class DeliveryInfo extends StatefulWidget {
  const DeliveryInfo({super.key});

  @override
  _DeliveryInfoState createState() => _DeliveryInfoState();
}

class _DeliveryInfoState extends State<DeliveryInfo> {
  String selectedLocation = "Green Way 3000, Sylhet";
  String selectedTime = "1 Hour";

  final List<String> locations = [
    "Green Way 3000, Sylhet",
    "Blue Street 2000, Dhaka",
    "Red Avenue 1000, Chittagong",
    "Yellow Lane 4000, Rajshahi",
  ];

  final List<String> times = [
    "30 Minutes",
    "1 Hour",
    "2 Hours",
    "Same Day",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          _buildDropdownColumn(
            title: "Delivery to",
            value: selectedLocation,
            items: locations,
            onChanged: (newValue) {
              setState(() {
                selectedLocation = newValue!;
              });
            },
          ),
          const Spacer(),
          _buildDropdownColumn(
            title: "Within",
            value: selectedTime,
            items: times,
            onChanged: (newValue) {
              setState(() {
                selectedTime = newValue!;
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _buildDropdownColumn({
    required String title,
    required String value,
    required List<String> items,
    required ValueChanged<String?> onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: ColorApp.grayText,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        DropdownButton<String>(
          value: value,
          dropdownColor: const Color.fromARGB(255, 180, 178, 178),
          icon: const Icon(Icons.arrow_drop_down, color: Colors.white),
          iconSize: 24,
          elevation: 16,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
          underline: const SizedBox(),
          onChanged: onChanged,
          items: items.map<DropdownMenuItem<String>>((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
        ),
      ],
    );
  }
}
