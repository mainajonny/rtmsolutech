import 'package:flutter/widgets.dart';

import 'Screens/home/home_screen.dart';
import 'Screens/visits/add_visit_screen.dart';
import 'Screens/visits/visit_details.dart';
import 'Screens/visits/visits_screen.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => const HomeScreen(),
  VisitsScreen.routeName: (context) => const VisitsScreen(),
  AddVisitScreen.routeName: (context) => const AddVisitScreen(),
  VisitDetails.routeName: (context) => const VisitDetails(),
};
