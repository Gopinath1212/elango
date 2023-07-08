
import 'package:flutter/cupertino.dart';

import 'package:medical/resources.dart';

extension AppContext on BuildContext {
  Resources get resources => Resources.of(this);
}