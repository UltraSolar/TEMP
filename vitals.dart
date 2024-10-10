
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_offline_app/components/consultationForm/demographics/ComponentConfig.dart';
import 'package:flutter_offline_app/components/consultationForm/demographics/widgetBuilder.dart';

class MyParentForm extends StatefulWidget {
  @override
  _MyParentFormState createState() => _MyParentFormState();
}

class _MyParentFormState extends State<MyParentForm> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();
  List<ComponentConfig> _currentConfig = vitalCough;

  final List<List<ComponentConfig>> configOptions = [
    vitalHeadAche,
    vitalFever,
    vitalCough
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // Pass the config here
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.35,
            width: MediaQuery.of(context).size.width * 0.90,
            child: DynamicFormComponentBuilder(
              config: _currentConfig,
              formKey: _formKey,
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                // Update the index to cycle through configs
                _currentIndex = (_currentIndex + 1) % configOptions.length;
                _currentConfig = configOptions[_currentIndex];
              });
            },
            child: Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}
