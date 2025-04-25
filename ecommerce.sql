-- 🏷️ Brand table: Stores brand information
CREATE TABLE brand (
brand_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(255) NOT NULL);

-- 🗂️ Product Category table: Groups products by category (e.g., clothing, electronics)
CREATE TABLE product_category (
category_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(255) NOT NULL);

-- 📦 Product table: Stores general product details
CREATE TABLE product (
  product_id INT PRIMARY KEY AUTO_INCREMENT, -- Unique product ID
  name VARCHAR(255) NOT NULL,                -- Product name
  brand_id INT,                              -- Foreign key to brand
  category_id INT,                           -- Foreign key to product category
  base_price DECIMAL(10,2),                  -- Default/base price
  FOREIGN KEY (brand_id) REFERENCES brand(brand_id),
  FOREIGN KEY (category_id) REFERENCES product_category(category_id)
);

-- 🖼️ Product Image table: Stores image URLs for products
CREATE TABLE product_image (
  image_id INT PRIMARY KEY AUTO_INCREMENT, -- Unique image ID
  product_id INT,                          -- Foreign key to product
  url VARCHAR(255),                        -- Image URL or path
  FOREIGN KEY (product_id) REFERENCES product(product_id)
);

-- 🎨 Color table: Defines available product color options
CREATE TABLE color (
  color_id INT PRIMARY KEY AUTO_INCREMENT, -- Unique color ID
  name VARCHAR(100),                       -- Color name (e.g., Red)
  hex_code VARCHAR(7)                      -- Hex color code (e.g., #FF0000)
);

-- 📏 Size Category table: Groups sizes (e.g., clothing, shoes)
CREATE TABLE size_category (
  size_category_id INT PRIMARY KEY AUTO_INCREMENT, -- Unique size category ID
  name VARCHAR(100)                                -- Size category name
);

-- 📐 Size Option table: Lists specific sizes like S, M, L, or numerical sizes
CREATE TABLE size_option (
  size_option_id INT PRIMARY KEY AUTO_INCREMENT, -- Unique size option ID
  name VARCHAR(50),                              -- Size name (e.g., M, 42)
  size_category_id INT,                          -- Foreign key to size category
  FOREIGN KEY (size_category_id) REFERENCES size_category(size_category_id)
);

-- 🧾 Product Item table: Represents purchasable product variations (e.g., a red medium shirt)
CREATE TABLE product_item (
  item_id INT PRIMARY KEY AUTO_INCREMENT, -- Unique item ID
  product_id INT,                         -- Foreign key to product
  sku VARCHAR(100),                       -- Stock Keeping Unit
  stock INT,                              -- Number of items in stock
  price_override DECIMAL(10,2),           -- Optional price override
  FOREIGN KEY (product_id) REFERENCES product(product_id)
);

-- 🔄 Product Variation table: Links product items with specific color and size
CREATE TABLE product_variation (
  variation_id INT PRIMARY KEY AUTO_INCREMENT, -- Unique variation ID
  item_id INT,                                 -- Foreign key to product item
  color_id INT,                                -- Foreign key to color
  size_option_id INT,                          -- Foreign key to size option
  FOREIGN KEY (item_id) REFERENCES product_item(item_id),
  FOREIGN KEY (color_id) REFERENCES color(color_id),
  FOREIGN KEY (size_option_id) REFERENCES size_option(size_option_id)
);

-- 📚 Attribute Category table: Groups product attributes (e.g., physical, technical)
CREATE TABLE attribute_category (
  attribute_category_id INT PRIMARY KEY AUTO_INCREMENT, -- Unique attribute category ID
  name VARCHAR(100)                                     -- Category name
);

-- 🧪 Attribute Type table: Defines how an attribute is stored (e.g., text, number)
CREATE TABLE attribute_type (
  attribute_type_id INT PRIMARY KEY AUTO_INCREMENT, -- Unique type ID
  name VARCHAR(100),                                -- Type name
  data_type VARCHAR(50)                             -- Data type (e.g., text, number)
);

-- 🧵 Product Attribute table: Stores additional product characteristics
CREATE TABLE product_attribute (
  attribute_id INT PRIMARY KEY AUTO_INCREMENT, -- Unique attribute ID
  product_id INT,                              -- Foreign key to product
  name VARCHAR(100),                           -- Attribute name (e.g., Material)
  value VARCHAR(255),                          -- Attribute value (e.g., Cotton)
  attribute_type_id INT,                       -- Foreign key to attribute type
  attribute_category_id INT,                   -- Foreign key to attribute category
  FOREIGN KEY (product_id) REFERENCES product(product_id),
  FOREIGN KEY (attribute_type_id) REFERENCES attribute_type(attribute_type_id),
  FOREIGN KEY (attribute_category_id) REFERENCES attribute_category(attribute_category_id)
);
