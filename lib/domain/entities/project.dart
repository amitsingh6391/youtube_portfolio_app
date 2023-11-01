class Project {
  const Project({
    required this.id,
    required this.title,
    required this.description,
    required this.projectUrl,
    required this.imageUrl,
    required this.projectCategory,
  });

  final int id;
  final String title;
  final String description;
  final String projectUrl;
  final String imageUrl;
  final String projectCategory;
}
