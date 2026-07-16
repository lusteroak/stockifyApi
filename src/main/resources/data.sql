-- Assuming your table name is 'products' (following Spring Boot JPA conventions)
-- If using a different table name, replace 'products' with your actual table name

INSERT INTO products (id, product_name, product_description, product_category, product_price, product_quantity,
                      is_available)
VALUES (1, 'Wireless Mouse', 'Ergonomic wireless mouse with USB receiver, 1600 DPI', 'Electronics', 29.99, 150, true),
       (2, 'Mechanical Keyboard', 'RGB mechanical keyboard with Cherry MX switches', 'Electronics', 89.99, 75, true),
       (3, 'USB-C Hub', '7-in-1 USB-C hub with HDMI, USB 3.0, and SD card reader', 'Electronics', 45.99, 200, true),
       (4, 'Laptop Stand', 'Adjustable aluminum laptop stand for better ergonomics', 'Office Supplies', 34.99, 100,
        true),
       (5, 'Desk Lamp', 'LED desk lamp with adjustable brightness and color temperature', 'Office Supplies', 39.99, 80,
        true),
       (6, 'Notebook Set', 'Pack of 3 premium hardcover notebooks, 200 pages each', 'Stationery', 15.99, 300, true),
       (7, 'Gel Pens Pack', 'Set of 24 colored gel pens, smooth writing', 'Stationery', 12.99, 500, true),
       (8, 'Water Bottle', 'Insulated stainless steel water bottle, 750ml', 'Sports & Outdoors', 24.99, 120, false),
       (9, 'Yoga Mat', 'Non-slip yoga mat with carrying strap, 6mm thick', 'Sports & Outdoors', 29.99, 60, true),
       (10, 'Bluetooth Speaker', 'Portable waterproof Bluetooth speaker, 12h battery life', 'Electronics', 49.99, 90,
        true);

-- More variety of products
INSERT INTO products (id, product_name, product_description, product_category, product_price, product_quantity,
                      is_available)
VALUES (11, 'Coffee Maker', 'Programmable 12-cup coffee maker with thermal carafe', 'Kitchen Appliances', 79.99, 45,
        true),
       (12, 'Toaster Oven', 'Convection toaster oven, fits 6 slices or 12-inch pizza', 'Kitchen Appliances', 59.99, 30,
        false),
       (13, 'Plant Pot Set', 'Set of 3 ceramic plant pots with drainage holes', 'Home & Garden', 22.99, 150, true),
       (14, 'Picture Frame', 'Modern black picture frame, 8x10 inches', 'Home Decor', 16.99, 200, true),
       (15, 'Wireless Earbuds', 'True wireless earbuds with noise cancellation', 'Electronics', 129.99, 40, true),
       (16, 'Phone Case', 'Shockproof silicone phone case, compatible with iPhone 15', 'Phone Accessories', 19.99, 250,
        true),
       (17, 'Screen Protector', 'Tempered glass screen protector, 2-pack', 'Phone Accessories', 9.99, 400, true),
       (18, 'Desk Organizer', 'Multi-compartment desk organizer with phone stand', 'Office Supplies', 27.99, 85, true),
       (19, 'Fitness Tracker', 'Smart fitness tracker with heart rate monitor', 'Electronics', 99.99, 55, false),
       (20, 'Backpack', 'Water-resistant laptop backpack, fits 15.6-inch laptop', 'Bags & Luggage', 49.99, 70, true);

-- Electronics & Gadgets
INSERT INTO products (id, product_name, product_description, product_category, product_price, product_quantity,
                      is_available)
VALUES (21, '4K Webcam', 'Ultra HD 4K webcam with auto-focus and built-in ring light', 'Electronics', 79.99, 65, true),
       (22, 'Portable SSD 1TB', 'External solid state drive, USB-C, read speeds up to 1050MB/s', 'Electronics', 109.99,
        40, true),
       (23, 'Smart LED Bulb 4-Pack', 'WiFi-enabled color changing LED bulbs, works with Alexa', 'Electronics', 34.99,
        180, true),
       (24, 'Wireless Charging Pad', 'Fast wireless charger compatible with all Qi devices', 'Electronics', 24.99, 120,
        true),
       (25, 'HDMI Cable 10ft', 'High-speed HDMI 2.1 cable, supports 8K resolution', 'Electronics', 14.99, 300, true),
       (26, 'Noise-Canceling Headphones', 'Over-ear headphones with active noise cancellation, 30h battery',
        'Electronics', 199.99, 25, false),
       (27, 'Digital Drawing Tablet', '10-inch graphics tablet with 8192 pressure levels', 'Electronics', 149.99, 35,
        true),
       (28, 'Smart Plug 2-Pack', 'WiFi smart plugs with energy monitoring and voice control', 'Electronics', 19.99, 250,
        true),
       (29, 'Car Phone Mount', 'Dashboard magnetic phone mount with strong adhesive base', 'Phone Accessories', 12.99,
        175, true),
       (30, 'Power Bank 20000mAh', 'Portable charger with dual USB ports and LED indicator', 'Phone Accessories', 32.99,
        95, true);

-- Office & Stationery
INSERT INTO products (id, product_name, product_description, product_category, product_price, product_quantity,
                      is_available)
VALUES (31, 'Ergonomic Office Chair', 'High-back mesh office chair with lumbar support and adjustable armrests',
        'Office Supplies', 299.99, 20, true),
       (32, 'Standing Desk Converter', 'Height adjustable standing desk converter, fits dual monitors',
        'Office Supplies', 179.99, 15, false),
       (33, 'Whiteboard 24x36', 'Magnetic dry erase whiteboard with aluminum frame', 'Office Supplies', 42.99, 50,
        true),
       (34, 'Paper Shredder', 'Cross-cut paper shredder, 12-sheet capacity, destroys credit cards', 'Office Supplies',
        55.99, 40, true),
       (35, 'Sticky Notes Bulk Pack', 'Assorted colors sticky notes, 24 pads, 100 sheets each', 'Stationery', 18.99,
        200, true),
       (36, 'Premium Ballpoint Pens', 'Executive ballpoint pens with smooth ink flow, 12-pack', 'Stationery', 21.99,
        150, true),
       (37, 'Planner 2026', 'Daily planner with hourly schedule, January to December 2026', 'Stationery', 13.99, 300,
        true),
       (38, 'Correction Tape Set', 'Ergonomic correction tape, 6-pack, instant dry', 'Stationery', 9.99, 400, true),
       (39, 'Document Scanner', 'Portable document scanner with OCR, scans to PDF directly', 'Office Supplies', 89.99,
        30, true),
       (40, 'Monitor Stand Riser', 'Wooden monitor stand with storage compartments', 'Office Supplies', 37.99, 70,
        true);

-- Home & Kitchen
INSERT INTO products (id, product_name, product_description, product_category, product_price, product_quantity,
                      is_available)
VALUES (41, 'Air Fryer 5.5L', 'Digital air fryer with 8 preset cooking programs, non-stick basket',
        'Kitchen Appliances', 89.99, 55, true),
       (42, 'Stainless Steel Cookware Set', '10-piece cookware set with glass lids, induction compatible',
        'Kitchen Appliances', 199.99, 15, true),
       (43, 'Electric Kettle', 'Double-wall electric kettle with temperature control, 1.7L', 'Kitchen Appliances',
        44.99, 90, true),
       (44, 'Spice Rack Organizer', 'Wall-mounted spice rack with 20 empty glass jars and labels', 'Kitchen Storage',
        29.99, 80, true),
       (45, 'Food Storage Containers', '22-piece glass food storage set with locking lids', 'Kitchen Storage', 39.99,
        100, true),
       (46, 'Scented Candle Set', 'Set of 3 soy wax candles, vanilla, lavender, and eucalyptus', 'Home Decor', 24.99,
        130, true),
       (47, 'Throw Blanket', 'Ultra-soft microfiber throw blanket, 50x70 inches, machine washable', 'Home Decor', 27.99,
        85, true),
       (48, 'Wall Clock 16-inch', 'Modern silent wall clock with large numbers, battery operated', 'Home Decor', 19.99,
        60, true),
       (49, 'Cordless Vacuum Cleaner', 'Lightweight stick vacuum with 45-min runtime, HEPA filtration',
        'Home Appliances', 149.99, 25, false),
       (50, 'Robot Vacuum', 'Smart robot vacuum with mapping technology and auto-empty dock', 'Home Appliances', 349.99,
        10, true);

-- Sports & Outdoors
INSERT INTO products (id, product_name, product_description, product_category, product_price, product_quantity,
                      is_available)
VALUES (51, 'Resistance Bands Set', '5-level resistance bands with handles and door anchor', 'Sports & Outdoors', 19.99,
        200, true),
       (52, 'Dumbbell Set 20lbs', 'Pair of neoprene coated dumbbells, comfortable grip', 'Sports & Outdoors', 34.99, 75,
        true),
       (53, 'Camping Tent 4-Person', 'Waterproof family camping tent with rainfly, easy setup', 'Sports & Outdoors',
        129.99, 20, true),
       (54, 'Sleeping Bag', '3-season sleeping bag rated for 20°F, compression sack included', 'Sports & Outdoors',
        49.99, 45, true),
       (55, 'Hiking Backpack 40L', 'Lightweight hiking backpack with hydration system compatible', 'Sports & Outdoors',
        59.99, 35, true),
       (56, 'Jump Rope', 'Adjustable speed jump rope with ball bearings for smooth rotation', 'Sports & Outdoors', 9.99,
        250, true),
       (57, 'Yoga Blocks 2-Pack', 'High-density EVA foam yoga blocks, non-slip surface', 'Sports & Outdoors', 11.99,
        140, true),
       (58, 'Tennis Racket', 'Adult tennis racket with lightweight aluminum frame, includes cover', 'Sports & Outdoors',
        39.99, 50, true),
       (59, 'Fishing Rod Combo', 'Telescopic fishing rod with spinning reel and tackle box', 'Sports & Outdoors', 44.99,
        30, false),
       (60, 'Folding Camping Chair', 'Portable folding chair with cup holder and carry bag', 'Sports & Outdoors', 26.99,
        90, true);

-- Beauty & Personal Care
INSERT INTO products (id, product_name, product_description, product_category, product_price, product_quantity,
                      is_available)
VALUES (61, 'Electric Toothbrush', 'Sonic electric toothbrush with 5 modes and 8 brush heads', 'Personal Care', 49.99,
        110, true),
       (62, 'Hair Dryer', 'Ionic hair dryer with diffuser, 1875W, lightweight design', 'Personal Care', 39.99, 65,
        true),
       (63, 'Beard Trimmer', 'Cordless beard trimmer with 20 length settings', 'Personal Care', 32.99, 80, true),
       (64, 'Essential Oil Diffuser', 'Ultrasonic aromatherapy diffuser with color changing LED', 'Personal Care',
        22.99, 120, true),
       (65, 'Bath Towel Set', 'Set of 4 premium cotton bath towels, 100% Turkish cotton', 'Home & Living', 44.99, 70,
        true),
       (66, 'Shower Caddy', 'Rust-proof stainless steel shower organizer, 4 tiers', 'Bathroom Accessories', 27.99, 90,
        true),
       (67, 'Digital Bathroom Scale', 'Smart body composition scale with Bluetooth, measures 13 metrics',
        'Personal Care', 29.99, 100, true),
       (68, 'Shaving Kit', 'Premium wet shaving kit with badger brush and stand', 'Personal Care', 35.99, 45, true),
       (69, 'Makeup Brush Set', 'Professional 18-piece makeup brush set with case', 'Beauty', 24.99, 130, true),
       (70, 'Nail Care Kit', '25-piece manicure and pedicure set in leather case', 'Beauty', 18.99, 95, true);

-- Pet Supplies
INSERT INTO products (id, product_name, product_description, product_category, product_price, product_quantity,
                      is_available)
VALUES (71, 'Orthopedic Dog Bed', 'Memory foam dog bed with washable cover, large size', 'Pet Supplies', 59.99, 40,
        true),
       (72, 'Cat Tree Tower', 'Multi-level cat tree with scratching posts and condos, 68 inches', 'Pet Supplies', 79.99,
        25, true),
       (73, 'Automatic Pet Feeder', 'Programmable automatic feeder with 6 meals, 4L capacity', 'Pet Supplies', 49.99,
        55, true),
       (74, 'Dog Leash 6ft', 'Reflective no-pull dog leash with padded handle', 'Pet Supplies', 14.99, 200, true),
       (75, 'Pet Carrier Bag', 'Airline-approved soft-sided pet carrier for small pets', 'Pet Supplies', 34.99, 45,
        false),
       (76, 'Cat Litter Box', 'Covered cat litter box with carbon filter and scoop', 'Pet Supplies', 19.99, 110, true),
       (77, 'Bird Cage', 'Decorative bird cage with stand and accessories, 18x18x24', 'Pet Supplies', 64.99, 10, true),
       (78, 'Fish Tank 10 Gallon', 'Complete aquarium kit with LED lighting and filter pump', 'Pet Supplies', 54.99, 15,
        true),
       (79, 'Pet Grooming Kit', 'Electric pet clipper with ceramic blade and guide combs', 'Pet Supplies', 29.99, 60,
        true),
       (80, 'Hamster Habitat', 'Two-level hamster cage with wheel, water bottle, and hideout', 'Pet Supplies', 44.99,
        20, true);

-- Baby & Kids
INSERT INTO products (id, product_name, product_description, product_category, product_price, product_quantity,
                      is_available)
VALUES (81, 'Baby Monitor', 'HD video baby monitor with night vision and two-way audio', 'Baby Products', 89.99, 35,
        true),
       (82, 'Diaper Bag', 'Multi-functional diaper backpack with changing pad, insulated pockets', 'Baby Products',
        39.99, 50, true),
       (83, 'Building Blocks Set', '1000-piece compatible building blocks with storage box', 'Toys & Games', 29.99, 120,
        true),
       (84, 'Board Game Collection', 'Family board game bundle with 5 classic games included', 'Toys & Games', 24.99,
        80, true),
       (85, 'Kids Art Easel', 'Double-sided wooden art easel with chalkboard and whiteboard', 'Toys & Games', 49.99, 30,
        true),
       (86, 'Baby Food Maker', '5-in-1 baby food processor with steamer and blender', 'Baby Products', 59.99, 40,
        false),
       (87, 'Stroller Fan', 'Clip-on stroller fan with flexible tripod and 3 speeds', 'Baby Products', 13.99, 150,
        true),
       (88, 'Educational Tablet', 'Kids learning tablet with parental controls and preloaded apps', 'Toys & Games',
        69.99, 45, true),
       (89, 'Play Mat', 'Extra large foam play mat, reversible, alphabet pattern', 'Baby Products', 34.99, 55, true),
       (90, 'RC Car', 'Remote control car with 2.4GHz transmitter, reaches 30mph', 'Toys & Games', 42.99, 65, true);

-- Automotive
INSERT INTO products (id, product_name, product_description, product_category, product_price, product_quantity,
                      is_available)
VALUES (91, 'Dash Cam', '4K dash camera with night vision and parking mode, loop recording', 'Automotive', 79.99, 50,
        true),
       (92, 'Car Vacuum Cleaner', 'Handheld 8000Pa car vacuum with HEPA filter, cordless', 'Automotive', 39.99, 70,
        true),
       (93, 'Seat Organizer', 'Backseat car organizer with tablet holder and multiple pockets', 'Automotive', 15.99,
        130, true),
       (94, 'Jump Starter', '2000A portable jump starter with power bank function', 'Automotive', 69.99, 35, true),
       (95, 'Phone Holder', 'Dashboard magnetic phone holder with strong suction cup', 'Automotive', 9.99, 300, true),
       (96, 'Car Trash Can', 'Leak-proof car trash can with lid and storage pockets', 'Automotive', 11.99, 160, true),
       (97, 'Air Freshener Pack', 'Long-lasting air freshener vent clips, 6-pack assorted scents', 'Automotive', 7.99,
        400, true),
       (98, 'Tire Inflator', 'Digital portable air compressor with auto shut-off, LED light', 'Automotive', 34.99, 45,
        true),
       (99, 'Trunk Organizer', 'Collapsible trunk organizer with dividers and handles', 'Automotive', 22.99, 85, true),
       (100, 'Windshield Sun Shade', 'Custom-fit reflective windshield sun shade, double layer', 'Automotive', 14.99,
        200, true);

-- Tools & Hardware
INSERT INTO products (id, product_name, product_description, product_category, product_price, product_quantity,
                      is_available)
VALUES (101, 'Cordless Drill', '20V cordless drill kit with 2 batteries and charger', 'Tools', 79.99, 40, true),
       (102, 'Screwdriver Set 45-Piece', 'Precision magnetic screwdriver set with case', 'Tools', 19.99, 150, true),
       (103, 'Tape Measure 25ft', 'Self-locking tape measure with magnetic hook, 1-inch blade', 'Tools', 8.99, 250,
        true),
       (104, 'LED Work Light', 'Rechargeable LED work light with stand, 5000 lumens', 'Tools', 44.99, 60, true),
       (105, 'Socket Wrench Set', 'Mechanics tool set with 40 pieces, chrome vanadium steel', 'Tools', 49.99, 35, true),
       (106, 'Cordless Glue Gun', 'Cordless hot glue gun with 20 glue sticks, quick heat-up', 'Tools', 17.99, 110,
        true),
       (107, 'Tool Box', '22-inch cantilever tool box with removable trays', 'Tools', 29.99, 75, true),
       (108, 'Utility Knife Set', 'Heavy-duty utility knives with 50 replacement blades', 'Tools', 12.99, 200, true),
       (109, 'Digital Multimeter', 'Auto-ranging digital multimeter with LCD display', 'Tools', 19.99, 55, false),
       (110, 'Level Tool 24-inch', 'Professional aluminum level with 3 vials, magnetic edge', 'Tools', 14.99, 90, true);

-- Books & Media
INSERT INTO products (id, product_name, product_description, product_category, product_price, product_quantity,
                      is_available)
VALUES (111, 'Cookbook: Easy Meals', 'Quick and healthy recipes cookbook with 200+ dishes', 'Books', 19.99, 160, true),
       (112, 'Fitness Journal', 'Undated 12-week fitness planner with tracking templates', 'Books', 14.99, 120, true),
       (113, 'Coloring Book Set', 'Adult coloring book set with 50 gel pens included', 'Books', 16.99, 140, true),
       (114, 'Recipe Card Box', 'Wooden recipe box with 100 cards and dividers', 'Kitchen Storage', 22.99, 65, true),
       (115, 'Puzzle 1000 Pieces', 'Landscape puzzle, 1000 pieces, premium chipboard', 'Toys & Games', 17.99, 90, true),
       (116, 'Self-Help Book Bundle', 'Set of 3 bestselling personal development books', 'Books', 29.99, 100, true),
       (117, 'Knitting Starter Kit', 'Complete knitting kit with bamboo needles and yarn', 'Crafts', 24.99, 70, true),
       (118, 'Paint by Numbers Kit', 'DIY acrylic painting kit with canvas and brushes', 'Crafts', 15.99, 85, true),
       (119, 'Travel Guide Book', 'Ultimate travel guide: Best destinations 2026 edition', 'Books', 21.99, 110, true),
       (120, 'Crossword Puzzle Book', '500 crossword puzzles book, spiral bound, large print', 'Books', 11.99, 200,
        true);