import 'package:flutter/material.dart';

class SimpleDatePicker extends StatefulWidget {
  const SimpleDatePicker({super.key});

  @override
  State<SimpleDatePicker> createState() => _SimpleDatePickerState();
}

class _SimpleDatePickerState extends State<SimpleDatePicker> {
  DateTime dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text("Simple Date Picker"),
          FilledButton(
              onPressed: () async {
                DateTime? newDate = await showDatePicker(
                    context: context,
                    initialDate: dateTime,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100));
                if (newDate == null) return;
                setState(() {
                  dateTime = newDate;
                });
              },
              child: const Text("Open Date Picker")),
          Chip(
              avatar: const Icon(Icons.calendar_today),
              label:
                  Text("${dateTime.day}/${dateTime.month}/${dateTime.year}")),
        ],
      ),
    );
  }
}
