import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:veterans_mobile/status_query.dart';

class Tracking extends StatefulWidget {
  @override
  _TrackingState createState() => _TrackingState();
}

class _TrackingState extends State<Tracking> {
  int _currentState = 0;
  List<StepState> _listState;

  // Debug info
  _TrackingState() {
    print("Current State $_currentState");
    StatusQuery sq = new StatusQuery(
        firstName: "Steve", lastName: "Crane", email: "steve@mattcteam.com");

    sq.query().then((value) => print(value.body));
  }

  // Initializes the states
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

  /* 
    Builds the steps with the appropriate states based on the current index
    i.e, every step prior to the current should have a check mark icon
    and every step after should be the step number. While the current step 
    should be a pencil
  */
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

  // Builds the widget
  @override
  Widget build(BuildContext context) {
    print("Current State After Rebuild $_currentState");
    return Stepper(
      steps: _buildSteps(), // Rebuilds the StepStates in the list above
      currentStep: _currentState,
      // What happens when the continue button is tapped
      onStepContinue: () {
        setState(() {
          _currentState++;
        });
      },
      // What happens when a step is tapped
      onStepTapped: (index) {
        setState(() {
          _currentState = index;
        });
      },
      // What happens when the cancel button is tapped
      onStepCancel: () {
        setState(() {
          _currentState--;
        });
      },
      // Hide the Coninue and Cancel buttons by building an empty container
      controlsBuilder: (context, {onStepCancel, onStepContinue}) {
        return Container();
      },
    );
  }
}
