import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:multi_dropdown/multi_dropdown.dart';

Color kPrimaryColor = const Color(0xFF0D6EFD);
Color kPrimaryColorLight = kPrimaryColor.withAlpha((0.25 * 255).toInt());
Color kPrimaryColorLighter = kPrimaryColor.withAlpha((0.1 * 255).toInt());

Color kSecondaryColor = const Color.fromARGB(255, 255, 179, 1);
Color kSecondaryColorLight = kSecondaryColor.withAlpha((0.25 * 255).toInt());
Color kSecondaryColorLighter = kSecondaryColor.withAlpha((0.1 * 255).toInt());

const Color kWhiteColor = Colors.white;
const Color kBlackColor = Colors.black;
const Color kGreyColor = Colors.grey;

double fullHeight(context) => MediaQuery.sizeOf(context).height;
double fullWidth(context) => MediaQuery.sizeOf(context).width;

IconButton defaultBackIcon(context) {
  return IconButton(
    icon: const Icon(Icons.arrow_back_ios_rounded),
    onPressed: () => Navigator.pop(context),
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
  );
}

Text defaultAppBarText(title) {
  return Text(
    title,
    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
  );
}

Center defaultLoader(BuildContext context) {
  return Center(
    child: SizedBox(
      height: fullHeight(context) * 0.05,
      child: LoadingIndicator(
        indicatorType: Indicator.circleStrokeSpin,
        colors: [kSecondaryColor],
        strokeWidth: 1.5,
        backgroundColor: Colors.transparent,
        pathBackgroundColor: Colors.transparent,
      ),
    ),
  );
}

String getDateFormat(String? input) {
  String date;
  late DateTime myDate;
  DateFormat format;

  if (input != null && input.isNotEmpty) {
    format = DateFormat('yyyy-MM-dd');
    myDate = DateTime.parse(format.parse(input).toLocal().toString());
    date = DateFormat("dd MMM, yyyy").format(myDate);
  } else {
    date = '';
  }

  return date;
}

String formatTime(String time) {
  return time.isNotEmpty
      ? DateFormat(
          'hh:mm a',
        ).format(DateTime.parse(DateFormat("HH:mm:ss").parse(time).toString()))
      : '--';
}

TextStyle kStyle = const TextStyle(
  color: kGreyColor,
  fontWeight: FontWeight.w500,
);

String getTimings(String date) {
  late String formattedTime;

  if (date.contains('T')) {
    String time = date.split('T')[1];
    // forces time to be in HH:mm:ss format by adding seconds to time without seconds
    String finalTime = time.split(':').length - 1 == 1 ? '$time:00.000' : time;
    formattedTime = formatTime(finalTime);
  } else {
    formattedTime = '';
  }
  return formattedTime;
}

enabledBorder() => OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(10)),
  borderSide: BorderSide(width: 0.5, color: Colors.grey.shade200),
);

focusedBorder() => OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(10)),
  borderSide: BorderSide(width: 0.5, color: kPrimaryColor),
);

errorBorder() => OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(10)),
  borderSide: BorderSide(width: 1.0, color: Colors.red),
);

FieldDecoration defaultFieldDecoration(
  String hint,
  IconData? icon,
  String? error,
) {
  return FieldDecoration(
    hintText: hint,
    showClearIcon: false,
    prefixIcon: Icon(icon, color: kPrimaryColorLight),
    labelStyle: TextStyle(color: kGreyColor),
    borderRadius: 10.0,
    errorBorder: errorBorder(),
    focusedBorder: focusedBorder(),
    border: enabledBorder(),
    backgroundColor: Colors.grey.shade100,
    hintStyle: TextStyle(fontSize: 12, color: kGreyColor),
    padding: EdgeInsets.only(left: 10, right: 10),
  );
}

InputDecoration defaultInputDecoration(IconData? icon, String? error) {
  return InputDecoration(
    filled: true,
    prefixIcon: Icon(icon, color: kPrimaryColorLight),
    labelStyle: TextStyle(color: kGreyColor),
    errorText: error,
    errorStyle: TextStyle(color: Colors.red, fontSize: 11),
    errorBorder: errorBorder(),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(width: 0.5, color: Colors.red),
    ),
    focusedBorder: focusedBorder(),
    enabledBorder: enabledBorder(),
    constraints: const BoxConstraints(minHeight: 50),
    fillColor: Colors.grey.shade100,
    prefixIconConstraints: BoxConstraints(maxWidth: 24, maxHeight: 24),
    hintStyle: TextStyle(fontSize: 12, color: kGreyColor),
    contentPadding: EdgeInsets.only(left: 10, right: 10),
    floatingLabelBehavior: FloatingLabelBehavior.always,
  );
}

ElevatedButton defaultElevatedButton(Function() onPressed, String text) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ButtonStyle(
      enableFeedback: true,
      visualDensity: VisualDensity.standard,
      fixedSize: WidgetStateProperty.all(Size.fromHeight(45.0)),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ),
      alignment: Alignment.center,
      elevation: WidgetStateProperty.all(3.0),
      padding: WidgetStateProperty.all(const EdgeInsets.all(10.0)),
      backgroundColor: WidgetStateProperty.all(kPrimaryColor),
      textStyle: WidgetStateProperty.all(const TextStyle(fontSize: 15)),
    ),
    child: Text(
      text,
      style: TextStyle(
        color: kWhiteColor,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
