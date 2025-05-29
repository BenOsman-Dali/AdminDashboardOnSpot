import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _n1Available = prefs.getBool('ff_n1Available') ?? _n1Available;
    });
    _safeInit(() {
      _n5Available = prefs.getBool('ff_n5Available') ?? _n5Available;
    });
    _safeInit(() {
      _n6Available = prefs.getBool('ff_n6Available') ?? _n6Available;
    });
    _safeInit(() {
      _n2Available = prefs.getBool('ff_n2Available') ?? _n2Available;
    });
    _safeInit(() {
      _ParkingDate = prefs.containsKey('ff_ParkingDate')
          ? DateTime.fromMillisecondsSinceEpoch(prefs.getInt('ff_ParkingDate')!)
          : _ParkingDate;
    });
    _safeInit(() {
      _n3Available = prefs.getBool('ff_n3Available') ?? _n3Available;
    });
    _safeInit(() {
      _n4Available = prefs.getBool('ff_n4Available') ?? _n4Available;
    });
    _safeInit(() {
      _n7Available = prefs.getBool('ff_n7Available') ?? _n7Available;
    });
    _safeInit(() {
      _n8Available = prefs.getBool('ff_n8Available') ?? _n8Available;
    });
    _safeInit(() {
      _n9Available = prefs.getBool('ff_n9Available') ?? _n9Available;
    });
    _safeInit(() {
      _c1available = prefs.getBool('ff_c1available') ?? _c1available;
    });
    _safeInit(() {
      _c2available = prefs.getBool('ff_c2available') ?? _c2available;
    });
    _safeInit(() {
      _c3available = prefs.getBool('ff_c3available') ?? _c3available;
    });
    _safeInit(() {
      _c4available = prefs.getBool('ff_c4available') ?? _c4available;
    });
    _safeInit(() {
      _c5available = prefs.getBool('ff_c5available') ?? _c5available;
    });
    _safeInit(() {
      _c6available = prefs.getBool('ff_c6available') ?? _c6available;
    });
    _safeInit(() {
      _c7available = prefs.getBool('ff_c7available') ?? _c7available;
    });
    _safeInit(() {
      _c8available = prefs.getBool('ff_c8available') ?? _c8available;
    });
    _safeInit(() {
      _c9available = prefs.getBool('ff_c9available') ?? _c9available;
    });
    _safeInit(() {
      _b1available = prefs.getBool('ff_b1available') ?? _b1available;
    });
    _safeInit(() {
      _b2available = prefs.getBool('ff_b2available') ?? _b2available;
    });
    _safeInit(() {
      _b3available = prefs.getBool('ff_b3available') ?? _b3available;
    });
    _safeInit(() {
      _b4available = prefs.getBool('ff_b4available') ?? _b4available;
    });
    _safeInit(() {
      _b5available = prefs.getBool('ff_b5available') ?? _b5available;
    });
    _safeInit(() {
      _b6available = prefs.getBool('ff_b6available') ?? _b6available;
    });
    _safeInit(() {
      _b7available = prefs.getBool('ff_b7available') ?? _b7available;
    });
    _safeInit(() {
      _b8available = prefs.getBool('ff_b8available') ?? _b8available;
    });
    _safeInit(() {
      _b9available = prefs.getBool('ff_b9available') ?? _b9available;
    });
    _safeInit(() {
      _bookedSpots = prefs.getInt('ff_bookedSpots') ?? _bookedSpots;
    });
    _safeInit(() {
      _AvSpots = prefs.getInt('ff_AvSpots') ?? _AvSpots;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _n1 = false;
  bool get n1 => _n1;
  set n1(bool value) {
    _n1 = value;
  }

  bool _n5 = false;
  bool get n5 => _n5;
  set n5(bool value) {
    _n5 = value;
  }

  bool _n1Available = true;
  bool get n1Available => _n1Available;
  set n1Available(bool value) {
    _n1Available = value;
    prefs.setBool('ff_n1Available', value);
  }

  bool _n5Available = true;
  bool get n5Available => _n5Available;
  set n5Available(bool value) {
    _n5Available = value;
    prefs.setBool('ff_n5Available', value);
  }

  bool _n6Available = true;
  bool get n6Available => _n6Available;
  set n6Available(bool value) {
    _n6Available = value;
    prefs.setBool('ff_n6Available', value);
  }

  bool _n2Available = true;
  bool get n2Available => _n2Available;
  set n2Available(bool value) {
    _n2Available = value;
    prefs.setBool('ff_n2Available', value);
  }

  bool _n2 = false;
  bool get n2 => _n2;
  set n2(bool value) {
    _n2 = value;
  }

  bool _n6 = false;
  bool get n6 => _n6;
  set n6(bool value) {
    _n6 = value;
  }

  int _duration = 0;
  int get duration => _duration;
  set duration(int value) {
    _duration = value;
  }

  int _selected = 0;
  int get selected => _selected;
  set selected(int value) {
    _selected = value;
  }

  bool _n3 = false;
  bool get n3 => _n3;
  set n3(bool value) {
    _n3 = value;
  }

  bool _n4 = false;
  bool get n4 => _n4;
  set n4(bool value) {
    _n4 = value;
  }

  bool _n7 = false;
  bool get n7 => _n7;
  set n7(bool value) {
    _n7 = value;
  }

  bool _n8 = false;
  bool get n8 => _n8;
  set n8(bool value) {
    _n8 = value;
  }

  bool _n9 = false;
  bool get n9 => _n9;
  set n9(bool value) {
    _n9 = value;
  }

  DateTime? _ParkingDate = DateTime.fromMillisecondsSinceEpoch(1744379280000);
  DateTime? get ParkingDate => _ParkingDate;
  set ParkingDate(DateTime? value) {
    _ParkingDate = value;
    value != null
        ? prefs.setInt('ff_ParkingDate', value.millisecondsSinceEpoch)
        : prefs.remove('ff_ParkingDate');
  }

  bool _c1 = false;
  bool get c1 => _c1;
  set c1(bool value) {
    _c1 = value;
  }

  bool _c2 = false;
  bool get c2 => _c2;
  set c2(bool value) {
    _c2 = value;
  }

  bool _c3 = false;
  bool get c3 => _c3;
  set c3(bool value) {
    _c3 = value;
  }

  bool _c4 = false;
  bool get c4 => _c4;
  set c4(bool value) {
    _c4 = value;
  }

  bool _c5 = false;
  bool get c5 => _c5;
  set c5(bool value) {
    _c5 = value;
  }

  bool _c6 = false;
  bool get c6 => _c6;
  set c6(bool value) {
    _c6 = value;
  }

  bool _c7 = false;
  bool get c7 => _c7;
  set c7(bool value) {
    _c7 = value;
  }

  bool _c8 = false;
  bool get c8 => _c8;
  set c8(bool value) {
    _c8 = value;
  }

  bool _c9 = false;
  bool get c9 => _c9;
  set c9(bool value) {
    _c9 = value;
  }

  bool _b1 = false;
  bool get b1 => _b1;
  set b1(bool value) {
    _b1 = value;
  }

  bool _b2 = false;
  bool get b2 => _b2;
  set b2(bool value) {
    _b2 = value;
  }

  bool _b3 = false;
  bool get b3 => _b3;
  set b3(bool value) {
    _b3 = value;
  }

  bool _b4 = false;
  bool get b4 => _b4;
  set b4(bool value) {
    _b4 = value;
  }

  bool _b5 = false;
  bool get b5 => _b5;
  set b5(bool value) {
    _b5 = value;
  }

  bool _b6 = false;
  bool get b6 => _b6;
  set b6(bool value) {
    _b6 = value;
  }

  bool _b7 = false;
  bool get b7 => _b7;
  set b7(bool value) {
    _b7 = value;
  }

  bool _b8 = false;
  bool get b8 => _b8;
  set b8(bool value) {
    _b8 = value;
  }

  bool _b9 = false;
  bool get b9 => _b9;
  set b9(bool value) {
    _b9 = value;
  }

  bool _neuchatel = false;
  bool get neuchatel => _neuchatel;
  set neuchatel(bool value) {
    _neuchatel = value;
  }

  bool _constance = false;
  bool get constance => _constance;
  set constance(bool value) {
    _constance = value;
  }

  bool _biwa = false;
  bool get biwa => _biwa;
  set biwa(bool value) {
    _biwa = value;
  }

  bool _n3Available = true;
  bool get n3Available => _n3Available;
  set n3Available(bool value) {
    _n3Available = value;
    prefs.setBool('ff_n3Available', value);
  }

  bool _n4Available = true;
  bool get n4Available => _n4Available;
  set n4Available(bool value) {
    _n4Available = value;
    prefs.setBool('ff_n4Available', value);
  }

  bool _n7Available = true;
  bool get n7Available => _n7Available;
  set n7Available(bool value) {
    _n7Available = value;
    prefs.setBool('ff_n7Available', value);
  }

  bool _n8Available = true;
  bool get n8Available => _n8Available;
  set n8Available(bool value) {
    _n8Available = value;
    prefs.setBool('ff_n8Available', value);
  }

  bool _n9Available = true;
  bool get n9Available => _n9Available;
  set n9Available(bool value) {
    _n9Available = value;
    prefs.setBool('ff_n9Available', value);
  }

  bool _c1available = true;
  bool get c1available => _c1available;
  set c1available(bool value) {
    _c1available = value;
    prefs.setBool('ff_c1available', value);
  }

  bool _c2available = true;
  bool get c2available => _c2available;
  set c2available(bool value) {
    _c2available = value;
    prefs.setBool('ff_c2available', value);
  }

  bool _c3available = true;
  bool get c3available => _c3available;
  set c3available(bool value) {
    _c3available = value;
    prefs.setBool('ff_c3available', value);
  }

  bool _c4available = true;
  bool get c4available => _c4available;
  set c4available(bool value) {
    _c4available = value;
    prefs.setBool('ff_c4available', value);
  }

  bool _c5available = true;
  bool get c5available => _c5available;
  set c5available(bool value) {
    _c5available = value;
    prefs.setBool('ff_c5available', value);
  }

  bool _c6available = true;
  bool get c6available => _c6available;
  set c6available(bool value) {
    _c6available = value;
    prefs.setBool('ff_c6available', value);
  }

  bool _c7available = true;
  bool get c7available => _c7available;
  set c7available(bool value) {
    _c7available = value;
    prefs.setBool('ff_c7available', value);
  }

  bool _c8available = true;
  bool get c8available => _c8available;
  set c8available(bool value) {
    _c8available = value;
    prefs.setBool('ff_c8available', value);
  }

  bool _c9available = true;
  bool get c9available => _c9available;
  set c9available(bool value) {
    _c9available = value;
    prefs.setBool('ff_c9available', value);
  }

  bool _b1available = true;
  bool get b1available => _b1available;
  set b1available(bool value) {
    _b1available = value;
    prefs.setBool('ff_b1available', value);
  }

  bool _b2available = true;
  bool get b2available => _b2available;
  set b2available(bool value) {
    _b2available = value;
    prefs.setBool('ff_b2available', value);
  }

  bool _b3available = true;
  bool get b3available => _b3available;
  set b3available(bool value) {
    _b3available = value;
    prefs.setBool('ff_b3available', value);
  }

  bool _b4available = true;
  bool get b4available => _b4available;
  set b4available(bool value) {
    _b4available = value;
    prefs.setBool('ff_b4available', value);
  }

  bool _b5available = true;
  bool get b5available => _b5available;
  set b5available(bool value) {
    _b5available = value;
    prefs.setBool('ff_b5available', value);
  }

  bool _b6available = true;
  bool get b6available => _b6available;
  set b6available(bool value) {
    _b6available = value;
    prefs.setBool('ff_b6available', value);
  }

  bool _b7available = true;
  bool get b7available => _b7available;
  set b7available(bool value) {
    _b7available = value;
    prefs.setBool('ff_b7available', value);
  }

  bool _b8available = true;
  bool get b8available => _b8available;
  set b8available(bool value) {
    _b8available = value;
    prefs.setBool('ff_b8available', value);
  }

  bool _b9available = true;
  bool get b9available => _b9available;
  set b9available(bool value) {
    _b9available = value;
    prefs.setBool('ff_b9available', value);
  }

  bool _isSubmitting = false;
  bool get isSubmitting => _isSubmitting;
  set isSubmitting(bool value) {
    _isSubmitting = value;
  }

  bool _changesSaved = false;
  bool get changesSaved => _changesSaved;
  set changesSaved(bool value) {
    _changesSaved = value;
  }

  bool _booked = false;
  bool get booked => _booked;
  set booked(bool value) {
    _booked = value;
  }

  int _bookedSpots = 0;
  int get bookedSpots => _bookedSpots;
  set bookedSpots(int value) {
    _bookedSpots = value;
    prefs.setInt('ff_bookedSpots', value);
  }

  int _AvSpots = 0;
  int get AvSpots => _AvSpots;
  set AvSpots(int value) {
    _AvSpots = value;
    prefs.setInt('ff_AvSpots', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
