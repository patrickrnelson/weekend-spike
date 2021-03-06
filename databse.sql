CREATE TABLE "styles" (
	"id" SERIAL PRIMARY KEY,
	"style_name" VARCHAR (100)
);

CREATE TABLE "dominant_flavors" (
	"id" SERIAL PRIMARY KEY,
	"flavor_name" VARCHAR (100)
);

CREATE TABLE "breweries" (
	"id" SERIAL PRIMARY KEY,
	"name" VARCHAR (100)
);

CREATE TABLE "characteristics" (
	"id" SERIAL PRIMARY KEY,
	"characteristic" VARCHAR (30)


CREATE TABLE "beers" (
	"id" SERIAL PRIMARY KEY,
	"name" VARCHAR (80) NOT NULL,
	"style_id" INT REFERENCES "styles",
	"dominant_flavor_id" INT REFERENCES "dominant_flavors",
	"brewery_id" INT REFERENCES "breweries"
);

CREATE TABLE "style_characteristics" (
	"id" SERIAL PRIMARY KEY,
	"style_id" INT REFERENCES "styles",
	"characteristic_id" INT REFERENCES "characteristics"
);

INSERT INTO "dominant_flavors" ("flavor_name")
VALUES ('malty'), ('bitter'), ('balanced'), ('hoppy'), ('roasty'), ('sweet'), ('smoke'), ('sour'), ('wood'), ('fruit'), ('spice'), ('juicy');

INSERT INTO "styles" ("style_name")
VALUES ('IPA'), 
('Pilsner'), 
('Hazy IPA'), 
('Sour Ale'), 
('Blonde Ale'),
('Stout'),
('ESB'),
('Smoothie IPA'),
('Pastry Stout'),
('Smoothie Sour'),
('Imperial Stout'),
('IPA'),
('Fruited Berliner Weise'),
('Imperial Smoothie Sour'),
('New England DIPA'),
('IPA'),
('Lager'),
('Coffee Lager'),
('Fruited Blonde Ale'),
('Amber Lager'),
('Golden Lager'),
('Session IPA'),
('Cream Ale'),
('Summer Ale'),
('Red Ale'),
('Kolsch'),
('Milkshake IPA'),
('Belgian Tripel'),
('Brown Ale'),
('Belgian'),
('Pastry Ale'),
('Porter'),
('Wheat Ale'),
('Imperial Lager'),
('Honey Ale'),
('Ale'),
('Dunkel Lager'),
('Barleywine'),
('Hazy Pale Ale'),
('Table Beer'),
('Saison'),
('Pale Ale');

INSERT INTO "breweries" ("name")
VALUES ('Pryes'), ('Modist'), ('Dangerous Man'), ('Indeed'), ('Inbound'), ('Castle Danger'), ('Fulton'), ('Fair State');

INSERT INTO "beers" ("name", "style_id", "dominant_flavor_id", "brewery_id")
VALUES 
('Miraculum', 1, 4, 1),
('Mass Haze-teria', 3, 12, 1),
('Royal Rasberry', 4, 8, 1),
('Pragmatic Pils', 2, 3, 1),
('Course Correct', 39, 12, 1),
('Peace Offering', 7, 5, 1),
('Bohemian Blonde', 6, 3, 1),
('Dublin Dry Stout', 7, 5, 1),
('Stoppage Time', 8, 2, 1),
('Sunrise Beach', 9, 6, 1),
('Outside the Grid', 9, 6, 1),
('El Camino', 9, 6, 1),
('Northern Tropic', 10, 8, 1),
('Blood Orange Miraculum', 1, 4, 1),

('The Fix: IWD 2021', 3, 12, 2),
('Fish Top Fish Bottom', 11, 5, 2), 
('Apiary Drip', 3, 12, 2), 
('Half Believing', 13, 6, 2), 
('Fruitropolis', 10, 6, 2), 
('Breathing: Conversations', 3, 12, 2), 
('Future Pixels', 3, 12, 2), 
('Noise Floor', 1, 12, 2),
('Bite Size', 7, 5, 2), 
('Supra Deluxe', 17, 3, 2), 
('False Pattern', 42, 12, 2), 
('Dreamyard', 3, 12, 2), 
('First Call', 18, 5, 2), 

('Sweet Child of Vine', 1, 4, 7),
('Lonely Blonde', 5, 3, 3),
('Grapefruit Lonely Blonde', 19, 10, 7),
('Northern Standard', 20, 1, 7),
('Chill City Chugger', 21, 3, 7),
('300', 1, 4, 7),
('Hopstar', 22, 4, 7),

('Castle Cream Ale', 23, 3, 6),
('Ode IPA', 1, 4, 6),
('17-7 Pale Ale', 42, 4, 6),
('North Shore Lager', 20, 1, 6),
('George Hunter Stout', 6, 5, 6),
('White Pine Project', 1, 4, 6),
('Summer Crush', 24, 3, 6),
('Mosaic Fresh Hop IPA', 1, 4, 6),
('Red Hop', 25, 1, 6),

('Contains Bees', 5, 3, 5),
('Fruit of the Loop', 1, 12, 5),
('Hazy Shades', 3, 12, 5),
('Laser Loon', 26, 3, 5),
('Rasberry Kolsch', 26, 10, 5),
('Stout', 6, 5, 5),
('Super G Lovshake', 27, 12, 5),
('Rouge Sauvage', 4, 8, 5),
('Halucidation', 28, 10, 5),
('Coffee Stout', 6, 5, 5),
('Rye Whiskey Barrel Aged Cinna-Man Buns', 29, 9, 5),

('Belgian Golden Strong', 30, 3, 3),
('Better Than... Double Stout', 6, 5, 3),
('Boysenberry Frangipane Pastry Ale', 31, 6, 3),
('Cherry Twist Stout', 6, 5, 3),
('Chocolate Milk Stout', 6, 5, 3),
('Cream Ale', 23, 3, 3),
('Crewel Juice Imperial Fruited Sour', 4, 8, 3),
('Gingersnap Brown Ale', 29, 11, 3),
('Hot Ron Double Pale Ale', 42, 4, 3),
('House IPA', 1, 4, 3),
('Kolsch', 26, 3, 3),
('Lemon Guava Danish Pastry Ale', 31, 6, 3),
('Nelly Stratado', 3, 4, 3),
('Nordic Lodge Ale', 36, 11, 3),
('Papaya IPA', 3, 10, 3),
('Peanut Butter Porter', 32, 5, 3),
('Strawberry Milkshake IPA', 27, 10, 3),
('Wee Sexy Lager', 17, 3, 3),

('Day Tripper', 42, 4, 4),
('Pils', 2, 3, 4),
('Lucy', 4, 8, 4),
('Mexican Honey Light', 17, 3, 4),
('Pistachio Cream Ale', 23, 3, 4),
('Zwickel Bier', 2, 3, 4),
('Let it Ride', 1, 4, 4),
('Flavorwave', 1, 12, 4),
('Hop Dab', 1, 4, 4),
('Honey Shenanigans', 33, 3, 4),
('Stir Crazy', 32, 5, 4),
('Oktoberfest', 17, 1, 4),
('Mexican Honey Light', 17, 3, 4),
('LSD', 35, 11, 4),
('Fresh Hop', 42, 4, 4),
('Strawberry Fields', 4, 8, 4),
('Bia-Side Pils', 2, 11, 4),
('Cerveza de Horchata', 36, 11, 4),
('Sarah Janes Maple Sticks', 9, 6, 4),
('Pink Rabbit Pils', 2, 3, 4),
('Taiga', 1, 10, 4),
('Danzig Dunkel', 17, 1, 4),
('NE Beer', 29, 3, 4),
('Spring Bier', 17, 1, 4),

('Air Five', 4, 6, 8),
('Big Doinks', 1, 2, 8),
('BRAAAAAM', 38, 6, 8),
('Dessert Week', 6, 6, 8),
('Flavor Pop Technology', 3, 12, 8),
('Foamers Lime', 17, 8, 8),
('Hey, Remember Pale Ales?', 42, 3, 8),
('IPA', 1, 2, 8),
('Life Aint Fair', 38, 1, 8),
('Main Boss', 9, 6, 8),
('Mirror Universe', 3, 12, 8),
('Pahlay', 39, 12, 8),
('Party Forward', 3, 10, 8),
('Petty Cash', 40, 11, 8),
('Pils', 2, 2, 8),
('Printing Money $$$', 41, 4, 8),
('Roselle', 4, 8, 8),
('Sastrugi', 3, 10, 8),
('Satsuma', 4, 12, 8),
('Standard Fun Balls', 38, 1, 8),
('Too Far Juice', 4, 6, 8),
('Union Lager', 17, 1, 8),
('Vienna Lager', 17, 4, 8)
;
	
INSERT INTO "characteristics" ("characteristic")
VALUES 
('Citrus'),
('Tart'),
('Juicy'),
('Light'),
('Chocolate'),
('Lemon'),
('Dry'),
('Bitter'),
('Tangerine'),
('Caramel'),
('Hazelnut'),
('Berry'),
('Fruit'),
('Coffee'),
('Hoppy'),
('Wheat'),
('Malty'),
('Balanced'),
('Malty'),
('Peanut Butter'),
('Juicy'),
('Roasted'),
('Orange'),
('Cherry'),
('Cinnamon'),
('Biscuit'),
('Rich'),
('Smooth'),
('Light'),
('Fruity'),
('Crisp'),
('Sweet'),
('Spice'),
('Floral'),
('Bready'),
('Cocoa'),
('Honey'),
('Pine'),
('Dank'),
('Tropical'),
('Ripe'),
('Hazy'),
('Apricot'),
('Brown Sugar'),
('Toffee'),
('Coconut'),
('Rasberry'),
('Vanilla'),
('Black Currant'),
('Pecans'),
('Roasty'),
('Fig'),
('Lavender'),
('Creamy'),
('Thick'),
('Bourban'),
('Guava'),
('Oak'),
('Boozy'),
('Clove'),
('Bright'),
('Dates'),
('Maple'),
('Berries')
;

INSERT INTO "style_characteristics" ("style_id" , "characteristic_id" )
VALUES
    ('1', '3'),
    ('1', '15'),
    ('1', '31'),
    ('1', '13'),
    ('1', '39'),
    ('1', '38'),
    ('1', '17'),
    ('1', '37'),
    ('1', '18'),
    ('1', '30'),
    ('1', '8'),
    ('1', '40'),
    ('1', '41'),
    ('1', '32'),
    ('1', '34'),
    ('2', '4'),
    ('2', '31'),
    ('2', '35'),
    ('2', '1'),
    ('2', '34'),
    ('2', '8'),
    ('2', '18'),
    ('2', '33'),
    ('3', '3'),
    ('3', '15'),
    ('3', '28'),
    ('3', '40'),
    ('3', '13'),
    ('3', '39'),
    ('3', '42'),
    ('3', '1'),
    ('3', '30'),
    ('4', '2'),
    ('4', '30'),
    ('4', '32'),
    ('4', '3'),
    ('4', '41'),
    ('4', '13'),
    ('4', '1'),
    ('4', '55'),
    ('4', '34'),
    ('4', '23'),
    ('4', '58'),
    ('4', '64'),
    ('5', '13'),
    ('5', '6'),
    ('5', '16'),
    ('5', '20'),
    ('5', '34'),
    ('5', '28'),
    ('5', '7'),
    ('5', '31'),
    ('6', '5'),
    ('6', '7'),
    ('6', '22'),
    ('6', '27'),
    ('6', '13'),
    ('6', '32'),
    ('6', '12'),
    ('6', '45'),
    ('6', '46'),
    ('6', '14'),
    ('6', '17'),
    ('6', '28'),
    ('6', '36'),
    ('6', '35'),
    ('7', '8'),
    ('7', '10'),
    ('7', '26'),
    ('8', '9'),
    ('8', '43'),
    ('8', '57'),
    ('9', '10'),
    ('9', '11'),
    ('9', '5'),
    ('9', '32'),
    ('9', '44'),
    ('9', '36'),
    ('9', '55'),
    ('9', '27'),
    ('9', '63'),
    ('9', '46'),
    ('10', '12'),
    ('10', '13'),
    ('10', '40'),
    ('10', '47'),
    ('10', '2'),
    ('10', '32'),
    ('13', '9'),
    ('13', '46'),
    ('13', '48'),
    ('17', '7'),
    ('17', '4'),
    ('17', '34'),
    ('17', '17'),
    ('17', '37'),
    ('17', '35'),
    ('17', '1'),
    ('17', '31'),
    ('17', '2'),
    ('17', '27'),
    ('17', '5'),
    ('17', '41'),
    ('17', '14'),
    ('17', '4'),
    ('20', '17'),
    ('20', '10'),
    ('20', '31'),
    ('20', '4'),
    ('22', '16'),
    ('22', '15'),
    ('22', '4'),
    ('23', '18'),
    ('23', '4'),
    ('23', '35'),
    ('23', '17'),
    ('23', '31'),
    ('23', '1'),
    ('24', '6'),
    ('24', '26'),
    ('24', '4'),
    ('25', '17'),
    ('25', '18'),
    ('25', '38'),
    ('26', '4'),
    ('26', '31'),
    ('26', '18'),
    ('26', '13'),
    ('26', '35'),
    ('27', '23'),
    ('27', '28'),
    ('27', '48'),
    ('27', '30'),
    ('27', '3'),
    ('27', '61'),
    ('28', '24'),
    ('28', '49'),
    ('28', '59'),
    ('29', '25'),
    ('29', '17'),
    ('29', '5'),
    ('29', '50'),
    ('29', '33'),
    ('29', '35'),
    ('29', '10'),
    ('29', '46'),
    ('30', '26'),
    ('30', '13'),
    ('30', '60'),
    ('31', '28'),
    ('31', '32'),
    ('31', '30'),
    ('31', '6'),
    ('31', '32'),
    ('31', '33'),
    ('32', '5'),
    ('32', '36'),
    ('32', '22'),
    ('32', '52'),
    ('32', '20'),
    ('32', '14'),
    ('33', '1'),
    ('33', '37'),
    ('33', '16'),
    ('35', '37'),
    ('35', '53'),
    ('35', '62'),
    ('36', '33'),
    ('36', '33'),
    ('36', '31'),
    ('36', '54'),
    ('36', '35'),
    ('38', '32'),
    ('38', '10'),
    ('38', '17'),
    ('38', '56'),
    ('38', '45'),
    ('38', '48'),
    ('39', '3'),
    ('39', '40'),
    ('39', '15'),
    ('40', '8'),
    ('40', '33'),
    ('40', '2'),
    ('41', '31'),
    ('41', '15'),
    ('41', '1'),
    ('42', '3'),
    ('42', '15'),
    ('42', '38'),
    ('42', '31'),
    ('42', '1'),
    ('42', '26'),
    ('42', '13'),
    ('42', '17'),
    ('42', '40');