class Project {
  const Project({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.projectUrl,
  });

  final int id;
  final String title;
  final String description;
  final String imageUrl;
  final String projectUrl;
}
