import 'dart:math';

class NumberUtil {
  static String format(double n) {
    if (n >= 1000000000) {
      n /= 1000000000;
      return "${n.toStringAsFixed(2)}B";
    } else if (n >= 1000000) {
      n /= 1000000;
      return "${n.toStringAsFixed(2)}M";
    } else if (n >= 10000) {
      n /= 1000;
      return "${n.toStringAsFixed(2)}K";
    } else {
      return n.toStringAsFixed(4);
    }
  }

  static String formatDevNagari(num n) {
    if (n >= 1000000000) {
      n /= 1000000000;
      return "${n.toStringAsFixed(2)}Arb.";
    } else if (n >= 10000000) {
      n /= 10000000;
      return "${n.toStringAsFixed(2)}Cr.";
    } else if (n >= 100000) {
      n /= 100000;
      return "${n.toStringAsFixed(2)}Lk";
    } else if (n >= 10000) {
      n /= 1000;
      return "${n.toStringAsFixed(2)}K";
    } else {
      return n.toStringAsFixed(4);
    }
  }

  static String formatUnitsDevNagari(num n) {
    if (n >= 1000000000) {
      n /= 1000000000;
      return "${n.toInt()}Arb.";
    } else if (n >= 10000000) {
      n /= 10000000;
      return "${n.toInt()}Cr.";
    } else if (n >= 100000) {
      n /= 100000;
      return "${n.toInt()}Lk";
    } else if (n >= 10000) {
      n /= 1000;
      return "${n.toInt()}K";
    } else {
      return n.toInt().toString();
    }
  }

  static String formatUnits(num n) {
    if (n >= 1000000000) {
      n /= 1000000000;
      return "${n.toInt()}B";
    } else if (n >= 1000000) {
      n /= 1000000;
      return "${n.toInt()}M";
    } else if (n >= 10000) {
      n /= 1000;
      return "${n.toInt()}K";
    } else {
      return n.toInt().toString();
    }
  }

  static int getDecimalLength(double b) {
    String s = b.toString();
    int dotIndex = s.indexOf(".");
    if (dotIndex < 0) {
      return 0;
    } else {
      return s.length - dotIndex - 1;
    }
  }

  static int getMaxDecimalLength(double a, double b, double c, double d) {
    int result = max(getDecimalLength(a), getDecimalLength(b));
    result = max(result, getDecimalLength(c));
    result = max(result, getDecimalLength(d));
    return result;
  }

  static bool checkNotNullOrZero(double? a) {
    if (a == null || a == 0) {
      return false;
    } else if (a.abs().toStringAsFixed(4) == "0.0000") {
      return false;
    } else {
      return true;
    }
  }
}
