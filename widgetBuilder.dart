import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_offline_app/components/consultationForm/demographics/ComponentConfig.dart';
import 'package:flutter_offline_app/services/globalDecorator.dart';
import 'package:flutter_offline_app/shared/components/spinnerComponent.dart';

class DynamicFormComponentBuilder extends StatelessWidget {
  final List<ComponentConfig> config;
  final GlobalKey<FormBuilderState> formKey;

  DynamicFormComponentBuilder({
    required this.config,
    required this.formKey,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> formWidgets = _buildWidgetsFromConfig();

    // Break formWidgets into chunks of 4
    List<Widget> rows = [];
    for (int i = 0; i < formWidgets.length; i += 4) {
      rows.add(
        Row(
          children: List.generate(4, (index) {
            // Check if we are still within bounds of formWidgets list
            if (i + index < formWidgets.length) {
              return Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                      right:
                          index < 3 ? 16.0 : 0), // Add spacing between widgets
                  child: formWidgets[i + index],
                ),
              );
            } else {
              return Expanded(
                  child: Container()); // Empty space if widgets are less than 4
            }
          }),
        ),
      );
    }

    return FormBuilder(
      key: formKey,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0), // Rounded corners
        ),
        elevation: 4.0,
        margin: EdgeInsets.all(8.0), // Margin around the card
        child: Padding(
          padding: EdgeInsets.all(16),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
            width: MediaQuery.of(context).size.width * 0.90,
            child: Column(
              children: rows, // Add the rows to the Column
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildWidgetsFromConfig() {
    return config.map((componentConfig) {
      List<Widget> widgets = [];

      if (componentConfig.componentName == 'spinner') {
        widgets.add(_buildSpinner(componentConfig));
      } else if (componentConfig.componentName == 'textformfield') {
        widgets.add(_buildTextFormField(componentConfig));
      }

      return Column(children: widgets);
    }).toList();
  }

  Widget _buildSpinner(ComponentConfig config) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(config.label, style: Globaldecorator.getLabelTextStyle(true)),
        SizedBox(height: 20),
        SpinnerComponent(
          name: config.label,
          minValue: config.constraints['minValue'] ?? 0,
          maxValue: config.constraints['maxValue'] ?? 100,
          increment: config.constraints['increment'] ?? 1,
          decimalPlaces: config.constraints['decimalPlaces'] ?? 0,
          initialValue: config.constraints['initialValue'],
          textBeforeSpinner: config.constraints['textBeforeSpinner'] ?? '',
        ),
      ],
    );
  }

  Widget _buildTextFormField(ComponentConfig config) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(config.label, style: Globaldecorator.getLabelTextStyle(true)),
        SizedBox(height: 20),
        SizedBox(
          height: 60, // Give a fixed height to the FormBuilderTextField
          child: FormBuilderTextField(
            name: config.label,
            decoration: InputDecoration(
              labelText: config.label,
              hintText: config.constraints['hintText'] ?? '',
            ),
            maxLength: config.constraints['maxLength'] ?? 50,
          ),
        ),
      ],
    );
  }
}
