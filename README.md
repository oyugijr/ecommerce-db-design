# E-Commerce Database Design

## 🎯 Objective
This project involves designing an Entity-Relationship Diagram (ERD) and building the corresponding e-commerce database schema from scratch. The goal is to create a relational database structure that supports an online store, encompassing products, categories, attributes, variations, and more.

## 🛠️ Technologies Used
- **MySQL**: Database management system used for creating tables.
- **dbdiagram.io**: Tool used to create the Entity-Relationship Diagram (ERD).
- **GitHub**: Version control and collaborative development.

## 🗃️ Project Structure

### Tables:
- **brand**: Stores brand information.
- **product_category**: Categorizes products (e.g., clothing, electronics).
- **product**: Main product information including price, brand, and category.
- **product_item**: Specific purchasable items, including stock and SKU.
- **product_image**: Stores URLs or references for product images.
- **color**: Manages product color options.
- **product_variation**: Links products to specific variations (e.g., size, color).
- **size_category**: Defines general size categories (e.g., clothing sizes).
- **size_option**: Specific size options like S, M, L, or numerical shoe sizes.
- **product_attribute**: Stores additional product details like material, weight.
- **attribute_category**: Groups product attributes into categories.
- **attribute_type**: Defines types of product attributes (e.g., text, number).

## 📅 How to Contribute

1. **Fork the repository**
2. **Clone the forked repo**
3. **Create a new branch** for your work (`git checkout -b feature-branch-name`)
4. **Make your changes**, add new tables or improve existing ones
5. **Commit your changes** with a clear message (`git commit -am "Added product variation table"`)
6. **Push to your branch** (`git push origin feature-branch-name`)
7. **Create a Pull Request** for review

## 🔧 Setup Instructions

1. Clone the repository:
    ```bash
    git clone https://github.com/your-username/ecommerce-db-design.git
    ```
2. Navigate to the repository folder:
    ```bash
    cd ecommerce-db-design
    ```
3. Use the SQL script to create the database schema:
    ```bash
    mysql -u your-username -p < ecommerce.sql
    ```

## 📑 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

### 💬 Questions?  
Feel free to open an issue or send a pull request if you have suggestions or improvements for the schema.
