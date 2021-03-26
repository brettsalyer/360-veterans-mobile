import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tracking extends StatefulWidget {
  @override
  _TrackingState createState() => _TrackingState();
}

class _TrackingState extends State<Tracking> {
  int _currentState = 0;
  List<StepState> _listState;

  _TrackingState() {
    print("Current State $_currentState");
  }

  @override
  void initState() {
    _currentState = 0;
    _listState = [
      StepState.indexed,
      StepState.editing,
      StepState.complete,
    ];
    super.initState();
  }

  List<Step> _buildSteps() {
    List<Step> states = [
      Step(
          title: Text("E-Benefits Submitted"),
          content: Text("E-Benefits Submitted"),
          state: _currentState == 0
              ? _listState[1]
              : _currentState > 0
                  ? _listState[2]
                  : _listState[0],
          isActive: true),
      Step(
          title: Text("Payment & Registration Completed"),
          content: Text("Payment & Registration Completed"),
          state: _currentState == 1
              ? _listState[1]
              : _currentState > 1
                  ? _listState[2]
                  : _listState[0],
          isActive: true),
      Step(
          title: Text("Questionnaire Sent to Patient"),
          content: Text("Questionnaire Sent to Patient"),
          state: _currentState == 2
              ? _listState[1]
              : _currentState > 2
                  ? _listState[2]
                  : _listState[0],
          isActive: true),
      Step(
          title: Text("Questionairre Sent to Patient"),
          content: Text("Questionnaire Sent to Patient"),
          state: _currentState == 3
              ? _listState[1]
              : _currentState > 3
                  ? _listState[2]
                  : _listState[0],
          isActive: true),
      Step(
          title: Text("Questionnaire in Review"),
          content: Text("Questionnaire in Review"),
          state: _currentState == 4
              ? _listState[1]
              : _currentState > 4
                  ? _listState[2]
                  : _listState[0],
          isActive: true),
      Step(
          title: Text("HQ Finalizing Paperwork & DBQs"),
          content: Text("HQ Finalizing Paperwork & DBQs"),
          state: _currentState == 5
              ? _listState[1]
              : _currentState > 5
                  ? _listState[2]
                  : _listState[0],
          isActive: true),
      Step(
          title: Text("Doctors Evaluation"),
          content: Text("Doctors Evaluation"),
          state: _currentState == 6
              ? _listState[1]
              : _currentState > 6
                  ? _listState[2]
                  : _listState[0],
          isActive: true),
      Step(
          title: Text("Submit Claim to E-Benefits"),
          content: Text("Submit Claim to E-Benefits"),
          state: _currentState == 7
              ? _listState[1]
              : _currentState > 7
                  ? _listState[2]
                  : _listState[0],
          isActive: true),
      Step(
          title: Text("Decision"),
          content: Text("Decision"),
          state: _currentState == 8
              ? _listState[1]
              : _currentState > 8
                  ? _listState[2]
                  : _listState[0],
          isActive: true)
    ];

    return states;
  }

  @override
  Widget build(BuildContext context) {
    print("Current State After Rebuild $_currentState");
    return Stepper(
      steps: _buildSteps(),
      currentStep: _currentState,
      onStepContinue: () {
        setState(() {
          _currentState++;
        });
      },
      onStepTapped: (index) {
        setState(() {
          _currentState = index;
        });
      },
      onStepCancel: () {
        setState(() {
          _currentState--;
        });
      },
      controlsBuilder: (context, {onStepCancel, onStepContinue}) {
        return Container();
      },
    );
  }
}
