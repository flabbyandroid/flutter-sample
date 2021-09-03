// class AllData {

//   List<Data> data = [];

//   AllData({required this.data});

//   AllData.fromJson(Map<String, dynamic> json) {
//     if (json['data'] != null) {
//       List<Data> data = [];
//       json['data'].forEach((v) {
//         data.add(new Data.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.data != null) {
//       data['data'] = this.data.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Data {
//   String? id = '';
//   String? product = '';
//   List<DetailRider>? detailRider = [];

//   Data({this.id, this.product, this.detailRider});

//   Data.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     product = json['product'];
//     if (json['detail_rider'] != null) {
//       List<DetailRider> detailRider = [];
//       json['detail_rider'].forEach((v) {
//         detailRider.add(new DetailRider.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['product'] = this.product;
//     if (this.detailRider != null) {
//       data['detail_rider'] = this.detailRider!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class DetailRider {
//   String? id;
//   String? name;
//   String? minP;
//   String? maxP;
//   String? minSumInsured;
//   String? maxSumInsured;

//   DetailRider(
//       { this.id = '',
//        this.name = '',
//        this.minP = '',
//        this.maxP = '',
//        this.minSumInsured = '',
//        this.maxSumInsured = ''});

//   DetailRider.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     minP = json['min_p'];
//     maxP = json['max_p'];
//     minSumInsured = json['min_sum_insured'];
//     maxSumInsured = json['max_sum_insured'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['min_p'] = this.minP;
//     data['max_p'] = this.maxP;
//     data['min_sum_insured'] = this.minSumInsured;
//     data['max_sum_insured'] = this.maxSumInsured;
//     return data;
//   }
// }
//////////////////////////////////////////////////////////////

// class AllData {
//   List<Data> data = [];

//   AllData({required this.data});

//   AllData.fromJson(Map<String, dynamic> json) {
//     if (json['data'] != null) {
//       List<Data> data = [];
//       json['data'].forEach((v) {
//         data.add(new Data.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.data != null) {
//       data['data'] = this.data.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Data {
//   String? id = '';
//   String? product = '';
//   List<DetailRider>? detailRider = [];

//   Data({this.id, this.product, this.detailRider});

//   Data.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     product = json['product'];
//     if (json['detail_rider'] != null) {
//       List<DetailRider> detailRider = [];
//       json['detail_rider'].forEach((v) {
//         detailRider.add(new DetailRider.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['product'] = this.product;
//     if (this.detailRider != null) {
//       data['detail_rider'] = this.detailRider!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class DetailRider2 {
//   String? id;
//   String? name;
//   String? minP;
//   String? maxP;
//   String? minSumInsured;
//   String? maxSumInsured;

//   DetailRider(
//       {this.id = '',
//       this.name = '',
//       this.minP = '',
//       this.maxP = '',
//       this.minSumInsured = '',
//       this.maxSumInsured = ''});

//   DetailRider.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     minP = json['min_p'];
//     maxP = json['max_p'];
//     minSumInsured = json['min_sum_insured'];
//     maxSumInsured = json['max_sum_insured'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['min_p'] = this.minP;
//     data['max_p'] = this.maxP;
//     data['min_sum_insured'] = this.minSumInsured;
//     data['max_sum_insured'] = this.maxSumInsured;
//     return data;
//   }
// }

// class Review {
//   Review({required this.score, this.review});
//   // non-nullable - assuming the score field is always present
//   final double score;
//   // nullable - assuming the review field is optional
//   final String? review;

//   factory Review.fromJson(Map<String, dynamic> data) {
//     final score = data['score'] as double;
//     final review = data['review'] as String?;
//     return Review(score: score, review: review);
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'score': score,
//       // here we use collection-if to account for null values
//       if (review != null) 'review': review,
//     };
//   }
// }

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

class TheData {
  TheData({required this.id, required this.product, required this.detailRider});
  // non-nullable - assuming the score field is always present
  final String id;
  final String product;
  final List<DetailRider> detailRider;

  factory TheData.fromJson(Map<String, dynamic> data) {
    final id = data['id'] as String;
    final product = data['product'] as String;
    final detailRiderData = data['detailRider'] as List<dynamic>;
    final detailRider = detailRiderData != null
        ? detailRiderData
            .map((riderData) => DetailRider.fromJson(riderData))
            .toList()
        : <DetailRider>[];
    return TheData(id: id, product: product, detailRider: detailRider);
  }
}

class AllData {
  AllData({required this.data});
  final List<TheData> data;

  factory AllData.fromJson(Map<String, dynamic> theData) {
    final detailData = theData['detailRider'] as List<dynamic>?;
    final data = detailData != null
        ? detailData.map((riderData) => TheData.fromJson(riderData)).toList()
        : <TheData>[];
    return AllData(data: data);
  }
}



// class Restaurant {
//   Restaurant({
//     required this.name,
//     required this.cuisine,
//     this.yearOpened,
//     required this.reviews,
//   });
//   final String name;
//   final String cuisine;
//   final int? yearOpened;
//   final List<Review> reviews;

//   factory Restaurant.fromJson(Map<String, dynamic> data) {
//   final name = data['name'] as String;
//   final cuisine = data['cuisine'] as String;
//   final yearOpened = data['year_opened'] as int?;
//   // cast to a nullable list as the reviews may be missing
//   final reviewsData = data['reviews'] as List<dynamic>?;
//   // if the reviews are not missing
//   final reviews = reviewsData != null
//       // map each review to a Review object
//       ? reviewsData.map((reviewData) => Review.fromJson(reviewData))
//         // map() returns an Iterable so we convert it to a List
//         .toList()
//       // use an empty list as fallback value
//       : <Review>[];
//   // return result passing all the arguments
//   return Restaurant(
//     name: name,
//     cuisine: cuisine,
//     yearOpened: yearOpened,
//     reviews: reviews,
//   );
// }
// }

