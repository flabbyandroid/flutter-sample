class DetailRider {
  DetailRider(
      {required this.id,
      required this.name,
      required this.minP,
      required this.maxP,
      required this.maxSumInsured,
      required this.minSumInsured});
  // non-nullable - assuming the score field is always present
  final String id;
  final String name;
  String minP;
  String maxP;
  String minSumInsured;
  String maxSumInsured;

  factory DetailRider.fromJson(Map<String, dynamic> data) {
    final id = data['id'] as String;
    final name = data['name'] as String;
    final minP = data['minP'] as String;
    final maxP = data['maxP'] as String;
    final maxSumInsured = data['maxSumInsured'] as String;
    final minSumInsured = data['minSumInsured'] as String;
    return DetailRider(
        id: id,
        name: name,
        minP: minP,
        maxP: maxP,
        maxSumInsured: maxSumInsured,
        minSumInsured: minSumInsured);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      // here we use collection-if to account for null values
      'name': name,
      'minP': minP,
      'maxP': maxP,
      'maxSumInsured': maxSumInsured,
      'minSumInsured': minSumInsured,
    };
  }
}
