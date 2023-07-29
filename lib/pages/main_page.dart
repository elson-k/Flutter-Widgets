import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/date_picker/simple_date_picker_widget.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SimpleDatePicker(),
    );
  }
}
