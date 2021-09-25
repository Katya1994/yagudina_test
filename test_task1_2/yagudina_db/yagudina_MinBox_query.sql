SELECT productName, categoryName
FROM products
LEFT JOIN productCategories
ON productCategories.pcProductID = products.productID
LEFT JOIN categories
ON productCategories.pcCategoryID = categories.categoryID;