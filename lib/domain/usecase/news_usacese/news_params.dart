import 'package:equatable/equatable.dart';

class NewsParams extends Equatable {
  final int page;
  final String search;
  final String sortBy;

  const NewsParams(this.page, this.search, this.sortBy);

  @override
  List<Object?> get props => [page, search, sortBy];
}
