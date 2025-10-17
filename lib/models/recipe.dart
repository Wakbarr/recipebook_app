class Recipe {
  final String id;
  final String name;
  final String description;
  final String category;
  final String region;
  final int cookingTime; // in minutes
  final int servings;
  final String difficulty;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final Map<String, String> nutrition;

  Recipe({
    required this.id,
    required this.name,
    required this.description,
    required this.category,
    required this.region,
    required this.cookingTime,
    required this.servings,
    required this.difficulty,
    required this.imageUrl,
    required this.ingredients,
    required this.steps,
    required this.nutrition,
  });
}
