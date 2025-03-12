import 'dart:io';

String dayName(String day) {
  switch (day)) {
    case "monday":
      return "It's Monday";
    case "tuesday":
      return "It's Tuesday";
    case "wednesday":
      return "It's Wednesday";
    case "thursday":
      return "It's Thursday";
    case "friday":
      return "It's Friday";
    case "saturday":
    case "sunday":
      return "It's the weekend";
    default:
      return "Invalid day name";
  }
}

String dayNames(String day) {
  return switch (day) {
    "monday" || "tuesday" || "wednesday" || "thursday" || "friday" => "Weekday",
    "saturday" || "sunday" => "Weekend",
    _ => "Invalid day name",
  };
}

String dayNames2(String day) {
  String x = switch (day) {
    "monday" || "tuesday" || "wednesday" || "thursday" || "friday" => "Weekday",
    "saturday" || "sunday" => "Weekend",
    _ => "Invalid day name",
  };
  return x;
}

void main() {
  print(dayName("Tuesday"));   // Output: It's Tuesday
  print(dayNames("Saturday")); // Output: Weekend
  print(dayNames2("Friday"));  // Output: Weekday
}
