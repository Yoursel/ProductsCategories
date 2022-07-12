SELECT Products.[Name], Categories.[Name] from Products
INNER JOIN CategoriesProducts ON Products.Id = CategoriesProducts.ProductId
LEFT OUTER JOIN Categories ON Categories.Id = CategoriesProducts.CategoryId

