

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
  print("Start Index = $startIndex,EndIndex = $endindex");
  return jopLocation.substring(startIndex,endindex);
}
