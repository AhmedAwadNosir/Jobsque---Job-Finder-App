String getExperinceLevel(String jopLevel) {
  int intJoplevel = int.parse(jopLevel);
  if (intJoplevel == 1) {
    return "Jonior";
  } else if (intJoplevel == 2) {
    return "Med Senior";
  } else {
    return "Senior";
  }
}
