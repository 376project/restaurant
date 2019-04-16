-- Create the album_review database
DROP DATABASE IF EXISTS menu_database;
CREATE DATABASE menu_database;
USE menu_database;

CREATE TABLE appetizers (
    ID int NOT NULL AUTO_INCREMENT,
    title varchar(100) NOT NULL,
    descript varchar(500) NOT NULL,
    imageURL varchar(500) NOT NULL,
    price float(5) NOT NULL,
    PRIMARY KEY (ID)
);

INSERT INTO appetizers VALUES 
    (1, 'Nachos', 'Toasted chips smothered in warm creamy cheese, lettuce, pico de gallo, black beans, sour cream, and salsa','https://images-gmi-pmc.edge-generalmills.com/4f5b624d-c9d0-4a75-acfe-fadbe40a7d1e.jpg', 8.99 ),
    (2, 'Mozzarella sticks', 'Mozzarella cheese battered and deep fried, served with marinara sauce', 'https://www.foxvalleyfoodie.com/wp-content/uploads/2015/07/deep-fried-mozzarella-sticks-stretching.jpg', 7.99),
    (3, 'Fried Pickles', 'Thinly sliced pickles battered and deep fried, served with chipotle ranch', 'http://d2gtpjxvvd720b.cloudfront.net/system/newsletter_item/social_image/581/default_FB-faux-fried-pickles-20170731-1302-26345-1633.jpg', 6.99 ),
    (4, 'Parmesan Garlic Wings', 'Fried chicken wings covered in creamy paremsan garlic sauce', 'https://www.mantitlement.com/wp-content/uploads/2017/11/baked-garlic-parmesan-chicken-wings-basket-698x1024.jpg', 11.99),
    (5, 'Buffalo Wings', 'Fried chicken wings covered in spicy buffalo sauce', 'https://dinnerthendessert.com/wp-content/uploads/2018/08/Buffalo-Wings-4.jpg', 11.99),
    (6, 'Honey BBQ Wings', 'Fried chicken wings covered in rich honey BBQ sauce', 'https://img.buzzfeed.com/thumbnailer-prod-us-east-1/4c41b09cf41644a7b7ca1780edbeb960/BFV8354_Honey_BBQ_Chicken_Wings-FB1080.jpg', 11.99),
    (7, 'Burger Sliders', 'Grilled mini burgers with cheese, bacon bits, ketchup, and mustard', 'https://www.tasteofhome.com/wp-content/uploads/2017/10/Cheddar-Onion-Beef-Sliders_exps167980_TH133086C08_02_3bC_RMS-2.jpg', 9.99), 
    (8, 'Fried Chicken Sliders', 'Fried chicken breast with lettuce, tomato, and mayo', 'https://skinnyms.com/wp-content/uploads/2018/09/Cheesecake-Factory_s-Southern-Fried-Chicken-Sliders-Copycat-Recipe1-750x498.jpg', 9.99), 
    (9, 'Salmon Sliders', 'Grilled atlantic Salmon with spinach and a garlic lemon aioli', 'https://mt-backend-familycircle-environment-contentbucket-1qlli1qnqqj9z.s3.amazonaws.com/s3fs-public/recipe/550_RU203308.jpg', 11.99),
    (10, 'Soft Pretzel Sticks', 'Baked pretzels served with a creamy queso', 'http://farm9.staticflickr.com/8072/8448784071_d365a62996.jpg', 7.99), 
    (11, 'Onion Ring Tower', 'Battered onion rings deep fried served with a horseradish ranch', 'https://www.anduzzis.com/wp-content/uploads/onion-ring-tower.jpg', 7.99), 
    (12, 'Tomato Soup', 'Rich tomato bisque with basil served with a slice of garlic toast', 'https://jonoandjules.files.wordpress.com/2012/03/cherry-tomato-soup.jpg', 3.99), 
    (13, 'French Onion', 'French onion soup with a bed of cheese and a large crouton', 'https://www.recipetineats.com/wp-content/uploads/2018/11/French-Onion-Soup_1.jpg', 3.99),
    (14, 'Chicken Tortilla Soup', 'Southwest soup with chicken, cheese, tortilla strips, black beans, onions, tomatoes, and avocado', 'https://www.chelseasmessyapron.com/wp-content/uploads/2018/01/15-Minute-Cheesy-Chicken-Tortilla-Soup2.jpg', 4.99);

CREATE TABLE entrees (
    ID int NOT NULL AUTO_INCREMENT,
    title varchar(100) NOT NULL,
    descript varchar(500) NOT NULL,
    imageURL varchar(500) NOT NULL,
    category varchar(50) NOT NULL,
    price float(5) NOT NULL,
    PRIMARY KEY (ID)
);

INSERT INTO entrees VALUES 
    (15, 'Classic Burger', 'Ground beef patty with american cheese, lettuce, tomatoes, and mayo', 'https://tasteandsee.com/wp-content/uploads/2017/06/Easy-Pimento-Cheese-and-Bacon-Burger-EL-burger-great.jpg', 'burger', 9.99),
    (16, 'SouthWest Burger', 'Ground beef patty with cheddar cheese, pico de gallo, guacamole, and chipotle ranch', 'https://www.afamilyfeast.com/wp-content/uploads/2017/07/Soutturkeyclubhwest-Burger.jpg', 'burger', 9.99),
    (17, 'Breakfast Burger', 'Ground beef patty with bacon, a fried egg, and country gravy', 'https://www.layersofhappiness.com/wp-content/uploads/2016/04/breakfast-burger-sandwich-2.jpg', 'burger', 12.99),
    (18, 'Veggie Burger', 'Veggie patty with lettuce, tomato, onion, and pickles', 'https://minimalistbaker.com/wp-content/uploads/2015/07/AMAZING-GRILLABLE-Veggie-Burgers-Hearty-flavorful-and-hold-up-on-the-grill-or-skillet-vegan-veggieburger-grilling-dinner-healthy-recipe.jpg', 'burger', 10.99),
    (19, 'BBQ Burger', 'Ground beef patty with cheddar cheese,  bacon, pulled pork, onion straws, and honey bbq sauce', 'https://thecozyapron.com/wp-content/uploads/2016/06/bbq-meatloaf-burger_thecozyapron_06-27-16_1.jpg', 'burger', 11.99),
    (20, 'Chicken Burger', 'Grilled chicken patty with lettuce, tomato, onion, pickles, and a garlic aioli', 'https://www.bellandevans.com/wp-content/uploads/Apricot_Burger_web-750x560.jpg', 'burger', 9.99),
    (21, 'Spicy Burger', 'Ground beef patty with pepper jack cheese, jalapenos, spicy red peppers, spinach, and spicy habanero sauce', 'https://img.taste.com.au/4VVYiMLr/taste/2016/11/spicy-lamb-burger-96199-1.jpeg', 'burger', 10.99),
    (22, 'Pepperoni Pizza', 'Baked pizza with our 3 cheese blend, homemade tomato sauce, and  pepperoni', 'https://www.homeruninnpizza.com/wp-content/uploads/2016/07/Classic_Sausage-_Pepperoni-header.jpg', 'pizza', 13.99),
    (23, 'Cheese Pizza', 'Baked pizza with our 3 cheese blend and our homemade tomato sauce', 'https://scootersjungle.com/placentia/wp-content/uploads/sites/4/2018/08/Papa-Johns-Cheese-Pizza-589x414-2.jpg', 'pizza', 11.99),
    (24, 'BBQ Chicken Pizza', 'Baked pizza with our 3 cheese blend, honey bbq sauce, red onion, and grilled chicken', 'https://www.jennycancook.com/wp-content/uploads/2015/03/BBQ_Chicken_Pizza_600.jpg', 'pizza', 14.99),
    (25, 'Hawaiian Pizza', 'Baked pizza with our 3 cheese blend, homemade tomato sauce, pineapple, and ham', 'https://d2gk7xgygi98cy.cloudfront.net/1374-3-large.jpg', 'pizza', 12.99),
    (26, 'Turkey Club', 'Turkey with cheese, tomato, avocado, and hummus on toasted rye', 'https://www.mysequinedlife.com/MSLblog/wp-content/uploads/2016/09/hummus-avocado-turkey-club-sandwich-3.jpg', 'sandwich', 8.99),
    (27, 'Ham & Cheese', 'Ham and cheddar cheese on toasted rye', 'https://media4.s-nbcnews.com/i/newscms/2017_15/1206946/grilled-cheese-ham-today-170411-tease_2b8383ef006f363558f25c8c168ecbc9.jpg', 'sandwich', 8.99),
    (28, 'Buffalo Chicken', 'Fried chicken breast covered in buffalo sauce with bleu cheese and spinach on a bu', 'https://tastykitchen.com/recipes/wp-content/uploads/sites/2/2017/05/crispy-buffalo-chicken-sandwich-3-410x273.jpg', 'sandwich', 8.99),
    (29, 'Bacon Lettice Tomato', 'Stacks of bacon, lettuce, and tomato with mayo on toasted rye', 'https://d3cizcpymoenau.cloudfront.net/images/31058/SFS_Ultimate_BLT_Sandwich-16.jpg', 'sandwich', 9.99),
    (30, 'Prime Rib', 'Slices of prime rib with mozzarella cheese, grilled onions, and garlic aioli', 'https://s3.amazonaws.com/finecooking.s3.tauntonclud.com/app/uploads/2017/04/18145333/fc82kt078-01-main.jpg', 'sandwich', 14.99),
    (31, 'Steak Taco', 'Flank steak tacos with onions, cilantro, and lime', 'https://www.wellplated.com/wp-content/uploads/2018/07/Grilled-Flank-Steak-Tacos-600x833.jpg', 'taco', 12.99),
    (32, 'Grilled Chicken Taco', 'Grilled chicken breast with pico de gallo and cilantro', 'https://cdn-image.myrecipes.com/sites/default/files/styles/medium_2x/public/image/recipes/sl/11/04/chicken-tacos-sl-x.jpg?itok=eNUu6o8H', 'taco', 11.99),
    (33, 'Grilled Shrimp Taco', 'Grilled shrimp with avocado, cilantro, and fresco sauce', 'https://www.onceuponachef.com/images/2012/05/shrimp-tacos1.jpg', 'taco', 12.99),
    (34, 'Fried Chicken', 'Four pieces of honey fried chicken', 'https://cdn.lifesambrosia.com/wp-content/uploads/Honey-Fried-Chicken-Recipe-Hi-Res-1-562x848.jpg', 'chicken', 12.99),
    (35, 'Grilled Chicken', 'Grilled seasoned chicken breast', 'https://ohsweetbasil.com/wp-content/uploads/quick-grilled-chicken-with-oregano-recipe-13.jpg', 'chicken', 11.99),
    (36, 'Baked Chicken', 'Oven baked seasoned chicken breast', 'https://diethood.com/wp-content/uploads/2018/11/Oven-Baked-Chicken-14.jpg', 'chicken', 12.99),
    (37, 'Baked Cod', 'Baked breaded cod with a lemon aioli', 'https://scm-assets.constant.co/scm/unilever/a6798e909fa57bfd19c3e7f00737e5d6/03952124-507a-4245-90af-af71615ce499.jpg', 'fish', 13.99),
    (38, 'Catfish', 'Crispy breaded seasoned catfish', 'http://www.shorelunch.com/files/images/recipes/Breading%20and%20Batter/SL_Fried_Catfish_R_01_A.jpg', 'fish', 12.99),
    (39, 'Ribeye Steak', '8 oz skillet ribeye', 'https://addapinch.com/wp-content/uploads/2018/01/skillet-rib-eye-steaks-recipe-0294-copy.jpg', 'steak', 18.99),
    (40, 'NY Strip Steak', '10 oz slice of NY strip', 'https://cf.ltkcdn.net/cooking/images/std/202901-675x450-NYstrip.jpg', 'steak', 16.99),
    (41, 'Filet Steak', '6 oz seasoned filet mignon', 'https://www.omahasteaks.com/gifs/990x594/pr_fm003.jpg', 'steak', 21.99),
    (42, 'Baby Back Ribs', 'A half rack of baby back ribs smothered in bbq sauce', 'https://www.modernhoney.com/wp-content/uploads/2018/08/Smoked-Baby-Back-Ribs-5.jpg', 'ribs', 14.99),
    (43, 'Full Rack Ribs', 'A full rack of baby back ribs smothered in bbq sauce', 'https://www.samsoncharles.com/wp-content/uploads/2016/03/5-web.jpg', 'ribs', 18.99),
    (44, 'Chicken Salad', 'Grilled chicken with iceberg lettuce, tomato, avocado, with chipotle ranch', 'https://tatyanaseverydayfood.com/wp-content/uploads/2016/02/Garlic-Chicken-Salad.jpg', 'salad', 6.99),
    (45, 'Caesar Salad', 'Romaine lettuce with parmesan cheese, caesar dressing, and croutons', 'https://assets.bonappetit.com/photos/57ae12ef53e63daf11a4e1d6/16:9/w_1200,c_limit/BA-best-classic-caeser-salad.jpg', 'salad', 6.99),
    (46, 'Berry Salad', 'Iceberg lettuce with mixed berries and a raspberry vinaigrette', 'https://tastesbetterfromscratch.com/wp-content/uploads/2018/04/Mixed-Greens-Berry-Salad-4.jpg', 'salad', 5.99);


CREATE TABLE desserts (
    ID int NOT NULL AUTO_INCREMENT,
    title varchar(100) NOT NULL,
    descript varchar(500) NOT NULL,
    imageURL varchar(500) NOT NULL,
    price float(5) NOT NULL,
    PRIMARY KEY (ID)
);

INSERT INTO desserts VALUES
    (47, 'Hot Brownie w/ Ice Cream', 'Warm fudge brownie with ice cream and chocolate fudge', 'http://www.recipesfab.com/wp-content/uploads/2016/11/Brownie-and-Ice-Cream-on-a-Sizzler-Recipe-by-Shireen-Anwar.jpg', 13.99),
    (48, 'Hot Cookie w/ Ice Cream', 'Hot chocolate chip cookie skillet with ice cream and chocolate fudge', 'https://s23209.pcdn.co/wp-content/uploads/2013/09/IMG_7781edit.jpg', 11.99),
    (49, 'Cheesecake', 'Creamy and rich cheesecake', 'https://d2gk7xgygi98cy.cloudfront.net/1820-3-large.jpg', 9.99),
    (50, 'Chocolate Cake', 'Creamy and rich chocolate cake', 'https://bakingamoment.com/wp-content/uploads/2016/08/0032featured.jpg', 8.99),
    (51, 'Mud Pie', 'Coffee ice cream with peanut butter and toffee chunks on a chocolate fudge', 'https://food.fnr.sndimg.com/content/dam/images/food/fullset/2012/10/3/1/FNM_110112-Mississippi-Mud-Pie-Recipe_s4x3.jpg.rend.hgtvcom.826.620.suffix/1380556811427.jpeg', 10.99),
    (52, 'Coconut Pie', 'Delicious coconut cream pie', 'https://images-gmi-pmc.edge-generalmills.com/59a09632-ffa1-4ad2-bcd5-a64ab96b2945.jpg', 12.99);

CREATE TABLE sides (
    ID int NOT NULL AUTO_INCREMENT,
    title varchar(100) NOT NULL,
    descript varchar(500) NOT NULL,
    imageURL varchar(500) NOT NULL,
    price float(5) NOT NULL,
    PRIMARY KEY (ID)
);

INSERT INTO sides VALUES 
    (53, 'French Fries', 'Thinly seasoned fried slices of potato', 'https://recipes.timesofindia.com/photo/54659021.cms', 4.99), 
    (54, 'Mashed Potatoes', 'Seasoned creamy masehd potatoes', 'https://natashaskitchen.com/wp-content/uploads/2016/11/Creamy-Mashed-Potatoes-5.jpg', 4.99), 
    (55, 'Baked Beans', 'Specialty baked beans with slices of pork', 'https://static01.nyt.com/images/2014/04/16/dining/16JPEASTER2/16JPEASTER2-superJumbo.jpg', 3.99),
    (56, 'Corn', 'Roasted salted corn', 'https://easyhealthllc.com/wp-content/uploads/2014/03/roasted-corn-f.png', 2.99), 
    (57, 'String Beans', 'Roasted strings beans covered in balsamic vinegar', 'https://images-gmi-pmc.edge-generalmills.com/cd2e3dd6-1a43-459c-8b03-c6dbe53bbd4d.jpg', 2.99);

CREATE TABLE drinks (
    ID int NOT NULL AUTO_INCREMENT,
    title varchar(100) NOT NULL,
    imageURL varchar(500) NOT NULL,
    price float(5) NOT NULL,
    PRIMARY KEY (ID)
);

INSERT INTO drinks VALUES
    (58, 'Mountain Dew', 'http://www.mountaindew.com/assets/content/28968/77263/89833-grew-dew-diet-product.png', 1.50),
    (59, 'Pepsi', 'https://st2.depositphotos.com/4431055/11854/i/950/depositphotos_118546758-stock-photo-pepsi-can-isolated.jpg', 1.50), 
    (60, 'Lemonade', 'https://www.nestandglow.com/wp-content/uploads/2017/07/apple-cider-vinegar-lemonade.jpg', 1.50), 
    (61, 'Pink Lemonade', 'https://www.couponclippingcook.com/wp-content/uploads/2017/07/13-Pink-Lemonade.jpg', 1.50), 
    (62, 'Water', 'https://ak8.picdn.net/shutterstock/videos/15156688/thumb/1.jpg', 0.00), 
    (63, 'Iced Tea', 'https://cdn.cpnscdn.com/static.coupons.com/ext/kitchme/images/recipes/600x400/arnold-palmer-lemonade-iced-tea_44551.jpg', 1.50),
    (64, 'Fruit Punch', 'https://cdnimg.webstaurantstore.com/images/products/large/78273/1671980.jpg', 1.50);


CREATE TABLE users (
    ID int NOT NULL AUTO_INCREMENT,
    email VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(500) NOT NULL,
    PRIMARY KEY (ID)
);

INSERT INTO users VALUES
    (1, 'omari@gmail.com', 'sesame'),
    (2, 'josh@gmail.com', 'sesame'),
    (3, 'monzur@gmail.com', 'sesame');

CREATE TABLE orders (
    ID int NOT NULL AUTO_INCREMENT,
    userID int NOT NULL,
    itemID int NOT NULL,
    itemName varchar(50) NOT NULL,
    itemPrice float(5) NOT NULL,
    quantity int NOT NULL,
    PRIMARY KEY (ID)
);

-- Create a user named db_user
GRANT SELECT, INSERT, UPDATE, DELETE
ON *
TO db_user@localhost
IDENTIFIED BY 'pa55word';