class ComponentConfig {
  final String componentName;
  final String label;
  final Map<String, dynamic> constraints;

  ComponentConfig({
    required this.componentName,
    required this.label,
    required this.constraints,
  });
}

List<ComponentConfig> vitalCough = [
  ComponentConfig(
    componentName: 'spinner',
    label: 'Spinner 1',
    constraints: {
      'minValue': 0,
      'maxValue': 100,
      'increment': 1,
      'decimalPlaces': 0,
      'initialValue': 10,
      'textBeforeSpinner': 'mm',
    },
  ),
  ComponentConfig(
    componentName: 'spinner',
    label: 'Spinner 2',
    constraints: {
      'minValue': 0,
      'maxValue': 50,
      'increment': 5,
      'decimalPlaces': 1,
      'initialValue': 25,
      'textBeforeSpinner': 'mm',
    },
  ),
  ComponentConfig(
    componentName: 'spinner',
    label: 'Spinner 3',
    constraints: {
      'minValue': 10,
      'maxValue': 200,
      'increment': 10,
      'decimalPlaces': 0,
      'initialValue': 50,
      'textBeforeSpinner': 'mm',
    },
  ),
  ComponentConfig(
    componentName: 'spinner',
    label: 'Spinner 4',
    constraints: {
      'minValue': 5,
      'maxValue': 300,
      'increment': 5,
      'decimalPlaces': 2,
      'initialValue': 100,
      'textBeforeSpinner': 'mm',
    },
  ),
  ComponentConfig(
    componentName: 'spinner',
    label: 'Spinner 5',
    constraints: {
      'minValue': 0,
      'maxValue': 500,
      'increment': 25,
      'decimalPlaces': 0,
      'initialValue': 250,
      'textBeforeSpinner': 'mm',
    },
  ),

  // TextFormField components
  ComponentConfig(
    componentName: 'textformfield',
    label: 'Text Field 1',
    constraints: {
      'maxLength': 50,
      'hintText': 'Enter your name',
    },
  ),
  ComponentConfig(
    componentName: 'textformfield',
    label: 'Text Field 2',
    constraints: {
      'maxLength': 100,
      'hintText': 'Enter your email',
    },
  ),
  ComponentConfig(
    componentName: 'textformfield',
    label: 'Text Field 3',
    constraints: {
      'maxLength': 150,
      'hintText': 'Enter your address',
    },
  ),
];

List<ComponentConfig> vitalHeadAche = [
  // Spinner components
  ComponentConfig(
    componentName: 'spinner',
    label: 'Spinner 1',
    constraints: {
      'minValue': 0,
      'maxValue': 100,
      'increment': 1,
      'decimalPlaces': 0,
      'initialValue': 10,
      'textBeforeSpinner': 'mm',
    },
  ),
  ComponentConfig(
    componentName: 'spinner',
    label: 'Spinner 2',
    constraints: {
      'minValue': 0,
      'maxValue': 50,
      'increment': 5,
      'decimalPlaces': 1,
      'initialValue': 25,
      'textBeforeSpinner': 'mm',
    },
  ),
  ComponentConfig(
    componentName: 'spinner',
    label: 'Spinner 3',
    constraints: {
      'minValue': 10,
      'maxValue': 200,
      'increment': 10,
      'decimalPlaces': 0,
      'initialValue': 50,
      'textBeforeSpinner': 'mm',
    },
  ),
  ComponentConfig(
    componentName: 'spinner',
    label: 'Spinner 4',
    constraints: {
      'minValue': 5,
      'maxValue': 300,
      'increment': 5,
      'decimalPlaces': 2,
      'initialValue': 100,
      'textBeforeSpinner': 'mm',
    },
  ),
  ComponentConfig(
    componentName: 'spinner',
    label: 'Spinner 5',
    constraints: {
      'minValue': 0,
      'maxValue': 500,
      'increment': 25,
      'decimalPlaces': 0,
      'initialValue': 250,
      'textBeforeSpinner': 'mm',
    },
  ),
];

List<ComponentConfig> vitalFever = [
  ComponentConfig(
    componentName: 'textformfield',
    label: 'Text Field 1',
    constraints: {
      'maxLength': 50,
      'hintText': 'Enter your name',
    },
  ),
  ComponentConfig(
    componentName: 'textformfield',
    label: 'Text Field 2',
    constraints: {
      'maxLength': 100,
      'hintText': 'Enter your email',
    },
  ),
  ComponentConfig(
    componentName: 'textformfield',
    label: 'Text Field 3',
    constraints: {
      'maxLength': 150,
      'hintText': 'Enter your address',
    },
  ),
  ComponentConfig(
    componentName: 'textformfield',
    label: 'Text Field 1',
    constraints: {
      'maxLength': 50,
      'hintText': 'Enter your name',
    },
  ),
  ComponentConfig(
    componentName: 'textformfield',
    label: 'Text Field 2',
    constraints: {
      'maxLength': 100,
      'hintText': 'Enter your email',
    },
  ),
  ComponentConfig(
    componentName: 'textformfield',
    label: 'Text Field 3',
    constraints: {
      'maxLength': 150,
      'hintText': 'Enter your address',
    },
  ),
];
