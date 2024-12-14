// ignore_for_file: non_constant_identifier_names

class NewsParams {
  final bool? author_choice;
  final String? categories;
  final bool? is_pinned;
  final int? limit;
  final int? offset;
  final String? ordering;
  final String? search;
  final String? tags;
  final bool? youtube;
  final String? slug;
  final int? id;
  NewsParams({
    this.author_choice,
    this.categories = "",
    this.is_pinned,
    this.limit = -1,
    this.offset = -1,
    this.ordering = "",
    this.search = "",
    this.tags = "",
    this.youtube,
    this.slug,
    this.id = -1,
  });
}
