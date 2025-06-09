BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "sales_data" (
	"Order ID"	TEXT,
	"Order Date"	TEXT,
	"Ship Date"	TEXT,
	"Ship Mode"	TEXT,
	"Customer ID"	TEXT,
	"Customer Name"	TEXT,
	"Segment"	TEXT,
	"Country"	TEXT,
	"City"	TEXT,
	"State"	TEXT,
	"Postal Code"	INTEGER,
	"Region"	TEXT,
	"Product ID"	TEXT,
	"Category"	TEXT,
	"Sub-Category"	TEXT,
	"Product Name"	TEXT,
	"Sales"	REAL,
	"Quantity"	INTEGER,
	"Discount"	REAL,
	"Profit"	REAL
);
INSERT INTO "sales_data" VALUES ('CA-2016-152156','11/8/16','11/11/16','Second Class','CG-12520','Claire Gute','Consumer','United States','Henderson','Kentucky',42420,'South','FUR-BO-10001798','Furniture','Bookcases','Bush Somerset Collection Bookcase',261.96,2,0.0,41.9136);
INSERT INTO "sales_data" VALUES ('CA-2016-152156','11/8/16','11/11/16','Second Class','CG-12520','Claire Gute','Consumer','United States','Henderson','Kentucky',42420,'South','FUR-CH-10000454','Furniture','Chairs','Hon Deluxe Fabric Upholstered Stacking Chairs',731.94,3,0.0,219.582);
INSERT INTO "sales_data" VALUES ('US-2015-108966','10/11/15','10/18/15','Standard Class','DV-13045','Darrin Van Huff','Corporate','United States','Los Angeles','California',90036,'West','OFF-LA-10000240','Office Supplies','Labels','Self-Adhesive Address Labels for Typewriters by Universal',14.62,2,0.0,6.8714);
COMMIT;
