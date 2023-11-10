import 'package:flutter/material.dart';

class StartCommunityScreen extends StatefulWidget {
  @override
  State<StartCommunityScreen> createState() => _StartCommunityScreenState();
}

class _StartCommunityScreenState extends State<StartCommunityScreen> {
  int _currentStep = 0;

  List<Step> _steps = [
    Step(
      title: Text('Step 1'),
      content: ElevatedButton(
        onPressed: () {
          // Handle step 1 logic
        },
        child: Text('Start Step 1'),
      ),
    ),
    Step(
      title: Text('Step 2'),
      content: ElevatedButton(
        onPressed: () {
          // Handle step 2 logic
        },
        child: Text('Start Step 2'),
      ),
    ),
    Step(
      title: Text('Step 3'),
      content: ElevatedButton(
        onPressed: () {
          // Handle step 3 logic
        },
        child: Text('Start Step 3'),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(6.0),
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            child: Card(
              elevation: 5.0,
              child: Stepper(
                type: StepperType.vertical,
                currentStep: _currentStep,
                onStepTapped: (step) {
                  setState(() {
                    _currentStep = step;
                  });
                },
                steps: _steps,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
