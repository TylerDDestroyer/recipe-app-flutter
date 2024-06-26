import 'package:flutter/material.dart';

class BeefPochero extends StatefulWidget{
  @override
  _BeefPocheroState createState() => _BeefPocheroState();
}
class _BeefPocheroState extends State{
  bool isFavorite = false;

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
      if (isFavorite) {
        // Add recipe name to favorites
        FavoriteRecipes.favorites.add('Beef Pochero');
      } else {
        // Remove recipe name from favorites
        FavoriteRecipes.favorites.remove('Beef Pochero');
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe'),
      ),
      body: ListView(
        children: [
          Container(
            height: 200, // Adjust the height according to your image size
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/Beef pochero(tagalog style).jpg'), // Change the image path
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Text(
                'Beef Pochero',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: isFavorite ? Colors.red : Colors.grey,
                  ),
                  onPressed: toggleFavorite,
                ),
                Text(
                  'Ingredients',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  '2 lbs beef chuck\n'
                      '1/2 head cabbage\n'
                      '1 bunch bok choy pechay\n'
                      '12 long green beans\n'
                      '1 potato\n'
                      '2 plantains\n'
                      '3 chorizo de bilbao\n'
                      '1 tomato\n'
                      '1 onion\n'
                      '2 tablespoons whole pepper corn\n'
                      '1 tablespoon fish sauce\n'
                      '3 cloves garlic\n'
                      '8 ounces tomato sauce\n'
                      '3 cups water\n'
                      '15 ounces garbanzos\n'
                      '3 tablespoons cooking oil\n',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  'Procedure',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '1.Heat oil in the pot and fry the banana until color turns golden brown. Once done, set the bananas aside\n'
                      '2.Put the chorizo in the same pot and fry each side until it browns. Remove and then set aside.\n'
                      '3.Using the remaining oil (add more if needed), sauté the garlic, onion, and tomato\n'
                      '4.Add the beef once the onion and tomato softens. Continue sauteeing until the exterior the beef turns light brown.\n'
                      '5.Add fish sauce, tomato sauce, and whole pepper corn. Stir.\n'
                      '6.Pour the water. Let it boil. Cover the pot and simmer until the meat gets tender. (You can also use a pressure cooker to tenderize the meat faster)\n'
                      '7.Add the fried chorizo back into the pot along with the fried bananas. Also add the potato and garbanzos. Simmer for minutes\n'
                      '8.Add the cabbage, long green beans and continue cooking for 5 minutes\n'
                      '9.Add the bok choy. Turn off the heat. Cover the pot for 5 minutes (the residual heat will completely cook the bok choy).\n'
                      '10.Transfer to a serving bowl. Serve hot. Share and Enjoy!\n',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class BeefSteak extends StatefulWidget{
  @override
  _BeefSteakState createState() => _BeefSteakState();
}
class _BeefSteakState extends State{
  bool isFavorite = false;

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
      if (isFavorite) {
        // Add recipe name to favorites
        FavoriteRecipes.favorites.add('Beef Steak');
      } else {
        // Remove recipe name from favorites
        FavoriteRecipes.favorites.remove('Beef Steak');
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe'),
      ),
      body: ListView(
        children: [
          Container(
            height: 200, // Adjust the height according to your image size
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/Beef steak.jpg'), // Change the image path
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Text(
                'Beef Steak',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: isFavorite ? Colors.red : Colors.grey,
                  ),
                  onPressed: toggleFavorite,
                ),
                Text(
                  'Ingredients',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  '1 1/2 lbs beef sirloin thinly sliced\n'
                      '5 tablespoons soy sauce\n'
                      '4 pieces calamansi\n'
                      ' 1/2 tsp ground black pepper\n'
                      '3 cloves garlic\n'
                      '3 pieces yellow onion\n'
                      '4 tablespoons cooking oil\n'
                      '1 cup water\n'
                      '1 pinch salt\n',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  'Procedure',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '1.Marinate beef in soy sauce, lemon (or calamansi), and ground black pepper for at least 1 hour. Note: marinate overnight for best result\n'
                      '2.Heat the cooking oil in a pan then pan-fry half of the onions until the texture becomes soft. Set aside\n'
                      '3.Drain the marinade from the beef. Set it aside. Pan-fry the beef on the same pan where the onions were fried for 1 minute per side. Remove from the pan. Set aside\n'
                      '4.Add more oil if needed. Saute garlic and remaining raw onions until onion softens.\n'
                      '5.Pour the remaining marinade and water. Bring to a boil.\n'
                      '6.Add beef. Cover the pan and simmer until meat is tender. Note: Add water as needed.\n'
                      '7.Season with ground black pepper and salt as needed. Top with pan-fried onions.\n'
                      '8.Transfer to a serving plate. Serve hot. Share and Enjoy!\n',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class PorkBelly extends StatefulWidget {
  @override
  _PorkBellyState createState() => _PorkBellyState();
}
class _PorkBellyState extends State{
  bool isFavorite = false;

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
      if (isFavorite) {
        // Add recipe name to favorites
        FavoriteRecipes.favorites.add('Pork Belly');
      } else {
        // Remove recipe name from favorites
        FavoriteRecipes.favorites.remove('Pork Belly');
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe'),
      ),
      body: ListView(
        children: [
          Container(
            height: 200, // Adjust the height according to your image size
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/pork belly.jpeg'), // Change the image path
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Text(
                'Pork Belly Asado',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: isFavorite ? Colors.red : Colors.grey,
                  ),
                  onPressed: toggleFavorite,
                ),
                Text(
                  'Ingredients',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  '3 lbs. pork belly.\n'
                      '1 Knorr Pork Cube\n'
                      '¼ cup banana ketchup\n'
                      '3 tablespoons soy sauce\n'
                      '3 tablespoons brown sugar\n'
                      '2 teaspoons cornstarch\n'
                      '8 cloves garlic\n'
                      '1 onion\n'
                      '2 star anise\n'
                      '2 tablespoons butter\n'
                      '4 cups water\n'
                      '3 tablespoons cooking oil\n',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  'Procedure',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '1.Combine pork belly, ketchup, soy sauce, and garlic. Mix well. Marinate overnight.\n'
                      '2.Heat oil in a pot. Saute onion until it softens\n'
                      '3.Add marinated pork. Saute until it browns.\n'
                      '4.Pour water into the pan. Let it boil.\n'
                      '5.Add Knorr Pork cube and star anise. Cover and continue cooking for 1 hour.\n'
                      '6.Add brown sugar and butter. Stir.\n'
                      '7.Make a slurry by combining cornstarch with ¼ cup water. Mix well. Pour the mixture into the pot. Cook until the sauce thickens.\n'
                      '8.Season with salt and ground black pepper.\n'
                      '9.Serve with rice. Share and enjoy!\n',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LechonBaboy extends StatefulWidget{
  @override
  _LechonBaboyState createState() => _LechonBaboyState();
}
class _LechonBaboyState extends State{
  bool isFavorite = false;

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
      if (isFavorite) {
        // Add recipe name to favorites
        FavoriteRecipes.favorites.add('Lechon Baboy');
      } else {
        // Remove recipe name from favorites
        FavoriteRecipes.favorites.remove('Lechon Baboy');
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe'),
      ),
      body: ListView(
        children: [
          Container(
            height: 200, // Adjust the height according to your image size
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/Lechon baboy.png'), // Change the image path
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Text(
                'Lechon Baboy',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: isFavorite ? Colors.red : Colors.grey,
                  ),
                  onPressed: toggleFavorite,
                ),
                Text(
                  'Ingredients',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  '1 whole pig (20 kilos), rinse and inside is clean and empty\n'
                      '10-20 bundles of lemon grass, pounded\n'
                      '500 grams spring onions, pounded\n'
                      '15 pieces bay leaves\n'
                      '1 kilo garlic\n'
                      '1 kilo onion\n'
                      '2-3 cups salt and pepper\n'
                      'evaporated milk (glaze).\n',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  'Procedure',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  '1.Pour boiling water inside pig’s belly. Drain.\n'
                      '2.Rub pig with salt and pepper inside and out.\n'
                      '3.Skewer the pig with a long bamboo.\n'
                      '4.Stuff the pig belly with lemon grass, spring onions, bay leaves, garlic, and onions. Secure with cooking thread.\n'
                      '5.Rub the skin with evaporated milk. This will make the skin red and crispy.\n'
                      '6.Roast the pig slowly over hot charcoal then glaze with remaining milk from time to time.\n'
                      '7.Roast for 4-5 hours or until skin is red and crispy, and the meat is tender.\n',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class GinataangManok extends StatefulWidget{
  @override
  _GinataangManokState createState() => _GinataangManokState();
}
class _GinataangManokState extends State {
  bool isFavorite = false;

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
      if (isFavorite) {
        // Add recipe name to favorites
        FavoriteRecipes.favorites.add('Ginataang Manok');
      } else {
        // Remove recipe name from favorites
        FavoriteRecipes.favorites.remove('Ginataang Manok');
      }
    });
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe'),
      ),
      body: ListView(
        children: [
          Container(
            height: 200, // Adjust the height according to your image size
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/Ginataang Manok.jpg'), // Change the image path
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Text(
                'Ginataang Manok',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: isFavorite ? Colors.red : Colors.grey,
                  ),
                  onPressed: toggleFavorite,
                ),
                Text(
                  'Ingredients',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  '2 lbs chicken cut into serving pieces'
                      '▢2 cups coconut milk'
                      '1/2 bunch spinach'
                      '▢2 tbsp garlic minced'
                      '▢1 large onion sliced'
                      '2 tbsp ginger julienned'
                      '8 ounces green papaya wedged'
                      '1/2 tsp paprika optional'
                      '1 piece long green chili optional'
                      '4 pieces Thai chili or siling labuyo if available, chopped (optional)'
                      '▢2 tbsp cooking oil'
                      'Salt and pepper to taste',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Procedure',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '1.Heat the cooking pot and pour-in the cooking oil.\n'
                      '2.Sauté the garlic, onion, and ginger.\n'
                      '3.Add the chicken and cook until the color of the outer part turns light brown.\n'
                      '4.Pour-in the coconut milk while stirring and bring to a boil.\n'
                      '5.Sprinkle some paprika then simmer for 30 minutes or until the chicken is tender and the coconut milk becomes thick.\n'
                      '6.Add the long green chili and Thai chili then simmer for 5 minutes\n'
                      '7.Add the green papaya then simmer for 5 to 8 minutes.\n'
                      '8.Put-in the spinach, salt, and pepper then simmer for 3 minutes.\n'
                      '9.Turn-off the heat then transfer the cooked chicken to a serving plate\n'
                      '10.Serve hot. Share and enjoy!\n',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class FavoriteRecipes {
  static List<String> favorites = [];

  static void deleteFavorite(BuildContext context, int index) {
    favorites.removeAt(index);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Recipe deleted')),
    );
    }
}

class ContextWrapper extends StatefulWidget {
  final BuildContext context;

  const ContextWrapper({required this.context});

  static _ContextWrapperState of(BuildContext context) {
    return context.findAncestorStateOfType<_ContextWrapperState>()!;
  }

  @override
  _ContextWrapperState createState() => _ContextWrapperState();
}

class _ContextWrapperState extends State<ContextWrapper> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ClickableFavoritesList extends StatefulWidget {
  @override
  _ClickableFavoritesListState createState() => _ClickableFavoritesListState();
}

class _ClickableFavoritesListState extends State<ClickableFavoritesList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Recipes'),
      ),
      body: RefreshIndicator(
        onRefresh: _refreshFavorites,
        child: StatefulBuilder(
          builder: (BuildContext innerContext, StateSetter setState) {
            return ListView.builder(
              itemCount: FavoriteRecipes.favorites.length,
              itemBuilder: (BuildContext context, int index) {
                String recipe = FavoriteRecipes.favorites[index];
                return RecipeItem(
                  recipe: recipe,
                  index: index,
                  onDelete: () {
                    FavoriteRecipes.deleteFavorite(innerContext, index);
                    setState(() {});
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
  Future<void> _refreshFavorites() async {
    // Add your code to refresh the favorites list here
    setState(() {});
  }
}

class RecipeItem extends StatefulWidget {
  final String recipe;
  final int index;
  final VoidCallback onDelete;

  const RecipeItem({required this.recipe, required this.index, required this.onDelete});

  @override
  _RecipeItemState createState() => _RecipeItemState();
}
class _RecipeItemState extends State<RecipeItem> {
  void _refreshFavorites() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle click on the recipe item
        print('Clicked on ${widget.recipe}');
        // You can add different actions for each recipe here
        switch (widget.recipe) {
          case 'Ginataang Manok':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => GinataangManok()),
            );// A
            // Action for Recipe 1
            break;
          case 'Pork Belly':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PorkBelly()),
            );// A
            // Action for Recipe 2
            break;
          case 'Beef Pochero':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BeefPochero()),
            );
            break;
          case 'Lechon Baboy':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LechonBaboy()),
            );
            break;
          default:
            break;
        }
      },
      child: Card(
        child: ListTile(
          title: Text(widget.recipe),
          trailing: IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              FavoriteRecipes.deleteFavorite(context, widget.index);
              _refreshFavorites();
            },
          ),
        ),
      ),
    );
  }
}






