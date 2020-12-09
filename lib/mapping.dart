import 'package:hotel_menu/vegetables.dart';

Map<String, String> mapping = {
  'Potato':
      'Potatoes offer many nutrients and minerals, but can become unhealthy if fried or loaded with butter, sour cream and cheese. Potatoes also offer vitamin B6, vitamin C and iron, and are an excellent source of potassium',
  'Tomato':
      'Tomatoes are the major dietary source of the antioxidant lycopene, which has been linked to many health benefits, including reduced risk of heart disease and cancer. They are also a great source of vitamin C, potassium, folate, and vitamin K.',
  'Cabbage':
      'Cabbage Is Packed With Nutrients. Share on Pinterest.It May Help Keep Inflammation in Check.Cabbage Is Packed With Vitamin C.It Helps Improve Digestion.May Help Keep Your Heart Healthy.May Lower Blood Pressure.Could Help Lower Cholesterol Levels.Cabbage Is an Excellent Source of Vitamin K.',
  'Onion':
      'Packed With Nutrients.May Benefit Heart Health.Loaded With Antioxidants.Contain Cancer-Fighting Compounds.Help Control Blood Sugar.May Boost Bone Density.Have Antibacterial Properties.May Boost Digestive Health.',
  'Carrot':
      'It is crunchy, tasty, and highly nutritious. Carrots are a particularly good source of beta carotene, fiber, vitamin K1, potassium, and antioxidants ( 1 ). They also have a number of health benefits. They are a weight-loss-friendly food and have been linked to lower cholesterol levels and improved eye health.',
  'Apple':
      'Apples Are Nutritious.Apples May Be Good for Weight Loss.Apples May Be Good for Your Heart.They are Linked to a Lower Risk of Diabetes.They May Have Prebiotic Effects and Promote Good Gut Bacteria.Substances in Apples May Help Prevent Cancer.Apples Contain Compounds That Can Help Fight Asthma.',
  'Mango':
      'Packed With Nutrients.High in Antioxidants.May Boost Immunity.May Support Heart Health.May Improve Digestive Health.May Support Eye Health.May Improve Hair and Skin Health.May Help Lower Your Risk of Certain Cancers.',
  'Orange':
      'Benefits of eating oranges.High in Vitamin C. Oranges are an excellent source of vitamin C.Healthy immune system.Prevents skin damage.Keeps blood pressure under check.Lowers cholesterol.Controls blood sugar level.Lowers the risk of cancer.',
  'Banana':
      'Bananas are respectable sources of vitamin C.Manganese in bananas is good for your skin.Potassium in bananas is good for your heart health and blood pressure.Bananas can aid digestion and help beat gastrointestinal issues.Bananas give you energy – minus the fats and cholesterol​',
  'Strawberry':
      'Packed with vitamins, fiber, and particularly high levels of antioxidants known as polyphenols, strawberries are a sodium-free, fat-free, cholesterol-free, low-calorie food. They are among the top 20 fruits in antioxidant capacity and are a good source of manganese and potassium.',
  'Chicken':
      'A 3.5-ounce (100-gram) serving of chicken breast provides 165 calories, 31 grams of protein and 3.6 grams of fat (1). That means that approximately 80% of the calories in chicken breast come from protein, and 20% come from fat.',
  'Cow Beef':
      'Meat is often considered unhealthy because it is high in saturated fat. For this reason, meat (especially fatty meat) has been demonized. But new studies have shown that saturated fat is harmless… and meat has been making a comeback as a health food.',
  'Fish':
      'Fish is a low-fat high quality protein. Fish is filled with omega-3 fatty acids and vitamins such as D and B2 (riboflavin). Fish is rich in calcium and phosphorus and a great source of minerals, such as iron, zinc, iodine, magnesium, and potassium.',
  'Goat Beef':
      'Nutritional Information Goat meat contains 26 g of protein and 2.58 total g of fat per serving, with only . 79 of those fat grams representing unhealthy saturated fat. The meat has several minerals and vitamins, including calcium, phosphorus, potassium, iron and niacin.',
  'Milk':
      'Milk is a nutrient-rich liquid food produced by the mammary glands of mammals. It is the primary source of nutrition for young mammals, including breastfed human infants before they are able to digest solid food.',
  'Cheese':
      'Cheese is a dairy product, derived from milk and produced in wide ranges of flavors, textures and forms by coagulation of the milk protein casein. It comprises proteins and fat from milk, usually the milk of cows, buffalo, goats, or sheep.',
  'Cream':
      'Cream skimmed from milk may be called "sweet cream" to distinguish it from cream skimmed from whey, a by-product of cheese-making. Whey cream has a lower fat content and tastes more salty, tangy and "cheesy". In many countries, cream is usually sold partially fermented: sour cream, crème fraîche, and so on.',
  'Yogurt':
      'Yogurt, also spelled yoghurt, yogourt or yoghourt, is a food produced by bacterial fermentation of milk. The bacteria used to make yogurt are known as yogurt cultures.',
  'Egg':
      'Eggs are laid by female animals of many different species, including birds, reptiles, amphibians, a few mammals, and fish, and many of these have been eaten by humans for thousands of years. Bird and reptile eggs consist of a protective eggshell, albumen, and vitellus, contained within various thin membranes',
  'Butter':
      'Butter is a dairy product made from the fat and protein components of milk or cream. It is a semi-solid emulsion at room temperature, consisting of approximately 80% butterfat. It is used at room temperature as a spread, melted as a condiment, and used as an ingredient in baking, sauce making, pan frying, and other cooking procedures.',
  'White Bread':
      'White bread typically refers to breads made from wheat flour from which the bran and the germ layers have been removed from the whole wheatberry as part of the flour grinding or milling process, producing a light-colored flour.',
  'Wheat Bread':
      'Whole wheat bread or wholemeal bread is a type of bread made using flour that is partly or entirely milled from whole or almost-whole wheat grains, see whole-wheat flour and whole grain. It is one kind of brown bread. ',
  'Roll Bread':
      'A roll is a small, usually round or oblong individual loaf of bread served as a meal accompaniment. A roll can be served and eaten whole or cut transversely and dressed with filling between the two halves. Rolls are also commonly used to make sandwiches similar to those produced using slices of bread.',
  'French Bread':
      'A baguette is a long, thin loaf of French bread that is commonly made from basic lean dough. It is distinguishable by its length and crisp crust. A baguette has a diameter of about 5 to 6 centimetres and a usual length of about 65 cm, although a baguette can be up to 1 m long.',
  'Burger Bread':
      'Though they come in many shapes and sizes, they are most commonly hand-sized or smaller, with a round top and flat bottom. Buns are usually made from flour, sugar, milk, yeast and butter.',
  'Olive oil':
      'Olive oil is a liquid fat obtained from olives, a traditional tree crop of the Mediterranean Basin, produced by pressing whole olives and extracting the oil. Olive oil is the most common vegetable oil. It is commonly used in cooking, for frying foods or as a salad dressing.',
  'Garlic Sauce':
      'Garlic sauce is a sauce prepared using garlic as a primary ingredient. It is typically a pungent sauce, with the depth of garlic flavor determined by the amount of garlic used. The garlic is typically crushed or finely diced.',
  'Chimichurri':
      'Chimichurri is an uncooked sauce used both in cooking and as a table condiment for grilled meat. A specialty of Argentina and Uruguay, the sauce comes in a green and a red version. It is made of finely chopped parsley, minced garlic, olive oil, oregano and red wine vinegar.',
  'Hot Sauce':
      'Hot sauce is a type of condiment, seasoning, or salsa made from chili peppers and other ingredients. Many commercial varieties of mass-produced hot sauce exist. Hot sauce is sometimes called Chili sauce, but the latter has a thicker texture and viscosity, and often comes in sweeter or milder varieties.',
  'Soya Sauce':
      'Soy sauce is an East Asian liquid condiment of Chinese origin, traditionally made from a fermented paste of soybeans, roasted grain, brine, and Aspergillus oryzae or Aspergillus sojae molds. It is considered to contain a strong umami flavor.',
  'Ghee oil':
      'Ghee is a class of clarified butter that originated in ancient India. It is commonly used in cuisine of the Indian subcontinent, Middle Eastern cuisine, Southeast Asian cuisine, traditional medicine, and religious rituals.',
  'Cooking oil':
      'Cooking oil is plant, animal, or synthetic fat used in frying, baking, and other types of cooking. It is also used in food preparation and flavouring not involving heat, such as salad dressings and bread dippings like bread dips, and may be called edible oil.',
  'Sugar':
      'Sugar is the generic name for sweet-tasting, soluble carbohydrates, many of which are used in food. Table sugar, granulated sugar, or regular sugar, refers to sucrose, a disaccharide composed of glucose and fructose. Simple sugars, also called monosaccharides, include glucose, fructose, and galactose.',
  'Salt':
      'Salt is a mineral composed primarily of sodium chloride, a chemical compound belonging to the larger class of salts; salt in its natural form as a crystalline mineral is known as rock salt or halite. Salt is present in vast quantities in seawater, where it is the main mineral constituent.',
  'Baking Soda':
      'Sodium bicarbonate, commonly known as baking soda or bicarbonate of soda, is a chemical compound with the formula NaHCO₃. It is a salt composed of a sodium cation and a bicarbonate anion. Sodium bicarbonate is a white solid that is crystalline, but often appears as a fine powder.',
  'Cron flour':
      'Corn starch, maize starch, or corn flour is the starch derived from corn grain. The starch is obtained from the endosperm of the kernel. Corn starch is a common food ingredient, often used to thicken sauces or soups, and to make corn syrup and other sugars. ',
  'Flour':
      'Flour is a powder made by grinding raw grains, roots, beans, nuts, or seeds. Flours are used to make many different foods. Cereal flour, particularly wheat flour, is the main ingredient of bread, which is a staple food for most cultures.',
  'Lays Chips':
      'In 1932, Herman W. Lay started a small business in Nashville, Tennessee selling potato chips made by a company in Atlanta, Georgia.  In 1944, Herman simplified the company\'s name to the one we all know today. Lays Potato Chips and became the first snack food company to advertise on television.',
  'Kurkure':
      'Kurkure is a brand of corn puffs produced and marketed by PepsiCo, and first manufactured in India in 1999 as Leher Kurkure. Kurkure is sold in India, Pakistan and other countries.',
  'DairyMilk':
      'Cadbury Dairy Milk is a brand of milk chocolate manufactured by Cadbury. It was introduced in the United Kingdom in 1905 and now consists of a number of products. Every product in the Dairy Milk line is made with exclusively milk chocolate. In 2014, Dairy Milk was ranked the best-selling chocolate bar in the UK. ',
  'Galaxy':
      'Galaxy is a chocolate bar, made and marketed by Mars, Incorporated, and first manufactured in the United Kingdom in the 1960s.',
  'Sprite':
      'Sprite is a colorless, lemon and lime-flavored soft drink created by The Coca-Cola Company. It was first developed in West Germany in 1959 as Fanta Klare Zitrone and was introduced in the United States under the current brand name Sprite in 1961 as a competitor to 7 Up.',
  'Pepsi':
      'Pepsi is a carbonated soft drink manufactured by PepsiCo. Originally created and developed in 1893 by Caleb Bradham and introduced as Brad\'s Drink, it was renamed as Pepsi-Cola in 1898, and then shortened to Pepsi in 1961.',
  'Coca Cola':
      'Coca-Cola, or Coke, is a carbonated soft drink manufactured by The Coca-Cola Company. Originally marketed as a temperance drink and intended as a patent medicine, it was invented in the late 19th century by John Stith Pemberton and was bought out by businessman Asa Griggs Candler, whose marketing tactics led Coca-Cola to its dominance of the world soft-drink market throughout the 20th century.',
  'Coffee':
      'Coffee is a brewed drink prepared from roasted coffee beans, the seeds of berries from certain Coffea species. When coffee berries turn from green to bright red in color – indicating ripeness – they are picked, processed, and dried. Dried coffee seeds are roasted to varying degrees, depending on the desired flavor.',
  'Black Tea':
      'Black tea is a type of tea that is more oxidized than oolong, yellow, white and green teas. Black tea is generally stronger in flavor than other teas. All four types are made from leaves of the shrub Camellia sinensis.',
  'Green Tea':
      'Green tea is a type of tea that is made from Camellia sinensis leaves and buds that have not undergone the same withering and oxidation process used to make oolong teas and black teas. Green tea originated in China, but its production and manufacture has spread to other countries in East Asia.',
  'Oolang Tea':
      'Oolong produced through a process including withering the plant under strong sun and oxidation before curling and twisting. Most oolong teas, especially those of fine quality, involve unique tea plant cultivars that are exclusively used for particular varieties.',
  'White Tea':
      'White tea is made from the Camellia sinensis plant. Its leaves and buds are picked just before they are fully open, when they\'re covered in fine white hairs. ... White tea is the least processed of the three teas. Because of this, it retains a high amount of antioxidants (2, 3).',
};
