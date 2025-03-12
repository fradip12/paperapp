extension StringExt on String? {
  String get orDefault => this ?? '';
  String get initials {
    List<String> nameParts = this?.split(' ') ?? [];
    String initials =
        nameParts.map((part) => part.isNotEmpty ? part[0] : '').join();
    return initials.length > 2 ? initials.substring(0, 2) : initials;
  }
}
