class Recipe {
  String name;
  String photo;
  int preparationTime;
  int servings;
  int numberOfFavorites;
  int numberOfComments;
  List<String> ingredientsDough;
  List<String> ingredientsTopping;
  List<String> methodOfPreparationOfDough;
  List<String> methodOfPreparationOfTopping;

  Recipe(
      {required this.name,
      required this.photo,
      required this.preparationTime,
      required this.servings,
      required this.ingredientsDough,
      required this.ingredientsTopping,
      required this.methodOfPreparationOfDough,
      required this.methodOfPreparationOfTopping,
      required this.numberOfComments,
      required this.numberOfFavorites});
}
