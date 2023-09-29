String getFileName(String fileName) {
  int end = fileName.length - 1;
  while (fileName[end] != ".") {
    end--;
  }
  String newFileName = fileName.substring(0, end);
  return newFileName;
}
