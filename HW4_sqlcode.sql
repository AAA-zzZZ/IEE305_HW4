INSERT INTO "Product" ("Name", "Price","Category")
VALUES("Tablet", 500.04,"Electronics") 

INSERT INTO "Customer" ("Name","Phone","Address")
VALUES ("Logan Jevtic","789-9604","121 Main St, City_A, CA 63540")

INSERT INTO "Orders" ("CustomerID","Orderdate", "Status","ProductID","Quantity")
VALUES(11,"11/06/2023","Shipped",11,5)


SELECT * FROM "Orders"
INNER JOIN "Customer" ON "CustomerID" = "Customer"."ID"
INNER JOIN "Product" ON "ProductID" = "Product"."ID"

SELECT * FROM "Product"
WHERE "Category" = "Electronics"

SELECT * FROM "Product"
ORDER BY "Price" ASC

SELECT * FROM "Orders"
ORDER BY "Orderdate" ASC

SELECT * FROM "Orders"
ORDER BY "Quantity" DESC LIMIT 5

SELECT "CustomerID", COUNT(*) AS "OrderCount"
FROM "Orders"
GROUP BY "CustomerID";

SELECT "CustomerID", COUNT(*) As "OrderCount"
FROM "Orders"
GROUP BY "CustomerID","Status" HAVING "Status" = "Pending";