

String getJopCountry(String jopLocation) {
  int endindex = jopLocation.length;
  int startIndex = jopLocation.length;
  while (jopLocation[endindex] == "" || jopLocation[endindex] == ".") {
    endindex--;
    startIndex--;
  }

  while (jopLocation[startIndex] != "") {
    startIndex--;
  }
  return jopLocation.substring(startIndex,endindex);
}
