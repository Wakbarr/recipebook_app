import 'package:flutter/material.dart';
import '../models/recipe.dart';
import '../data/recipe_data.dart';
import '../widgets/recipe_card.dart';
import '../widgets/category_chip.dart';
import 'recipe_detail_screen.dart';
import 'search_screen.dart';
import 'favorites_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedCategory = 'Semua';
  final List<String> categories = [
    'Semua',
    'Daging',
    'Ikan',
    'Sayuran',
    'Nasi',
    'Sup',
  ];

  final Map<String, IconData> categoryIcons = {
    'Semua': Icons.restaurant_menu,
    'Daging': Icons.food_bank,
    'Ikan': Icons.set_meal,
    'Sayuran': Icons.eco,
    'Nasi': Icons.rice_bowl,
    'Sup': Icons.soup_kitchen,
  };

  List<Recipe> get filteredRecipes {
    if (selectedCategory == 'Semua') {
      return recipeList;
    }
    return recipeList
        .where((recipe) => recipe.category == selectedCategory)
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _buildAppBar(),
          SliverToBoxAdapter(
            child: Column(
              children: [
                _buildSearchBar(),
                _buildCategoryFilter(),
                _buildSectionHeader('Resep Populer'),
              ],
            ),
          ),
          _buildRecipeGrid(),
        ],
      ),
    );
  }

  Widget _buildAppBar() {
    return SliverAppBar(
      expandedHeight: 250,
      floating: false,
      pinned: true,
      stretch: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.3),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Text(
            '🍽️ Buku Resep Indonesia',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              letterSpacing: 0.5,
              shadows: [
                Shadow(
                  offset: Offset(0, 2),
                  blurRadius: 4,
                  color: Colors.black54,
                ),
              ],
            ),
          ),
        ),
        background: Stack(
          fit: StackFit.expand,
          children: [
            // Animated gradient background
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.orange[800]!,
                    Colors.orange[600]!,
                    Colors.deepOrange[400]!,
                    Colors.orange[300]!,
                  ],
                  stops: const [0.0, 0.3, 0.7, 1.0],
                ),
              ),
            ),
            // Animated pattern overlay
            Positioned.fill(
              child: Opacity(
                opacity: 0.1,
                child: CustomPaint(painter: PatternPainter()),
              ),
            ),
            // Floating food icons with parallax effect
            Positioned(
              right: -60,
              top: 20,
              child: Transform.rotate(
                angle: 0.2,
                child: Icon(
                  Icons.restaurant,
                  size: 180,
                  color: Colors.white.withOpacity(0.15),
                ),
              ),
            ),
            Positioned(
              left: -40,
              bottom: 10,
              child: Transform.rotate(
                angle: -0.3,
                child: Icon(
                  Icons.food_bank,
                  size: 140,
                  color: Colors.white.withOpacity(0.15),
                ),
              ),
            ),
            Positioned(
              right: 40,
              bottom: 40,
              child: Icon(
                Icons.restaurant_menu,
                size: 100,
                color: Colors.white.withOpacity(0.1),
              ),
            ),
            // Gradient overlay for better text visibility
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Colors.black.withOpacity(0.3)],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      actions: [
        // Modern action buttons with badges
        Container(
          margin: const EdgeInsets.only(right: 8),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            borderRadius: BorderRadius.circular(12),
          ),
          child: IconButton(
            icon: const Icon(Icons.favorite, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FavoritesScreen(),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildSearchBar() {
    return Container(
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.orange.withOpacity(0.3),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SearchScreen()),
          );
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.orange.withOpacity(0.05)],
            ),
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.orange.withOpacity(0.3), width: 2),
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.orange.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(Icons.search, color: Colors.orange, size: 24),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  'Cari resep favorit Anda...',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Icon(Icons.tune, color: Colors.grey[400]),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryFilter() {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: CategoryChip(
              label: category,
              icon: categoryIcons[category]!,
              isSelected: selectedCategory == category,
              onTap: () {
                setState(() {
                  selectedCategory = category;
                });
              },
            ),
          );
        },
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            '${filteredRecipes.length} resep',
            style: TextStyle(fontSize: 14, color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }

  Widget _buildRecipeGrid() {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      sliver: SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: _getCrossAxisCount(context),
          childAspectRatio:
              0.6, // Sesuai saran reviewer: 0.6 untuk menghindari overflow
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        delegate: SliverChildBuilderDelegate((context, index) {
          final recipe = filteredRecipes[index];
          return RecipeCard(
            recipe: recipe,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RecipeDetailScreen(recipe: recipe),
                ),
              );
            },
          );
        }, childCount: filteredRecipes.length),
      ),
    );
  }

  int _getCrossAxisCount(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width > 1200) return 4;
    if (width > 800) return 3;
    if (width > 600) return 2;
    return 1;
  }
}

// Custom painter for decorative pattern
class PatternPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    // Draw decorative circles
    for (var i = 0; i < 10; i++) {
      for (var j = 0; j < 10; j++) {
        final x = (size.width / 10) * i;
        final y = (size.height / 10) * j;
        canvas.drawCircle(Offset(x, y), 2, paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
