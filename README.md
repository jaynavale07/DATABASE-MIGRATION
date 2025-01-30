# DATABASE-MIGRATION
This task involves migrating the database schema and data to a new version or platform.  It ensures data integrity and minimal downtime during the transition. 🚀

**COMPANY**: CODTECH IT SOLUTIONS

**NAME**: Jay Navale

**INTERN ID**: CT08JMM

**DOMAIN**: SQL

**BATCH DURATION**: January 5th 2025 to February 5th, 2025

**MENTOR NAME**: Neela Santhosh Kumar

# Database Migration: MySQL to MongoDB


#### Introduction
Migrating data from MySQL to MongoDB is a common task when transitioning from a relational database model to a NoSQL document model. MySQL Workbench, which is a powerful graphical tool for MySQL, is often used for data extraction, while MongoDB Compass, the official GUI for MongoDB, is used for data management and importing. This document provides an overview of how to migrate data from MySQL Workbench to MongoDB Compass, ensuring a smooth transition of your data while maintaining data integrity.

#### Tools Used

1. **MySQL Workbench:**
   - **MySQL Workbench** is used for connecting to and managing MySQL databases. In this task, MySQL Workbench helps export data from MySQL tables, either in SQL or CSV format, to prepare it for import into MongoDB.
   
2. **MongoDB Compass:**
   - **MongoDB Compass** is the graphical user interface (GUI) for MongoDB. It allows you to interact with MongoDB databases and collections, import data, and view documents visually. This tool will be used to import the data exported from MySQL Workbench into MongoDB collections.

3. **Data Transformation Tools :**
   - Depending on the complexity of the MySQL data and its structure, data transformation tools or custom scripts may be used to convert relational data into MongoDB’s document-based format (JSON or BSON).

#### Steps Involved in Migration

1. **Export Data from MySQL Workbench:**
   - To migrate data from MySQL to MongoDB, we first need to extract it from MySQL using **MySQL Workbench**.
   - **Export Data as CSV or SQL:**
     - Open **MySQL Workbench** and connect to the MySQL database.
     - Navigate to the specific database and table(s) you want to migrate.
     - Run a SELECT query to fetch the required data (e.g., `SELECT * FROM your_table`).
     - Once you have the query result, right-click on the result set and choose **"Export Resultset to File"**.
     - Select the **CSV** format for data export (CSV is often the easiest format for MongoDB to handle).
     - Save the CSV file to a location on your computer.

   **Note:** If your MySQL database contains multiple related tables (e.g., foreign key relationships), you may need to export the data from each table separately. In MongoDB, related data can either be embedded within documents or referenced, depending on your data structure and design.

2. **Transform Data for MongoDB:**
   - MongoDB stores data in a flexible, document-based structure, so we may need to transform the data from its relational tabular format to MongoDB's BSON or JSON format.
   - For example:
     - Each **MySQL table** becomes a **MongoDB collection**.
     - **Rows** from the MySQL table become **documents** in the MongoDB collection.
     - If there are foreign keys in MySQL, we have two choices in MongoDB:
       - **Embedding** related data directly within a document (denormalization).
       - **Referencing** other documents by storing the related record’s ID.

   **Data Transformation Considerations:**
   - Flatten complex relationships from MySQL into MongoDB’s document format (for example, one-to-many relationships).
   - Convert MySQL data types into MongoDB-compatible formats (e.g., dates, strings, numbers).

   You can use simple tools such as Excel, Python scripts, or specialized tools like **Talend** or **Pentaho** to help with the transformation if necessary.

3. **Import Data into MongoDB Using MongoDB Compass:**
   - After transforming the data into a format that MongoDB can handle (usually CSV or JSON), the next step is to import it into MongoDB using **MongoDB Compass**.
   
   **Using MongoDB Compass:**
   - Open **MongoDB Compass** and connect to your MongoDB instance.
   - Select or create a **Database** where you want to import the data.
   - Create a **Collection** within the database (if it doesn't already exist). A collection is similar to a table in MySQL.
   - In the MongoDB Compass UI, click on **"Import Data"**.
   - Choose **CSV** (if your data was exported as CSV) or **JSON** (if your data was exported in JSON format) as the file type.
   - Choose the **CSV file** or **JSON file** you exported from MySQL Workbench.
   - Map the CSV fields to MongoDB fields if necessary (ensure that the column names in your CSV file are mapped correctly to the document fields in MongoDB).
   - Click **Import** to load the data into MongoDB.

   **Note:** Ensure that the data is correctly formatted in your CSV or JSON file before importing. If using CSV, make sure that the first row contains headers (column names), as MongoDB Compass will use these as the document field names.

4. **Data Integrity Check:**
   - After the data is imported into MongoDB, it's important to verify that the migration has been successful and the data integrity has been maintained.
   
   **Check Document Count:**
   - Verify the number of documents in MongoDB matches the number of rows you exported from MySQL.
   - You can check the document count using the following MongoDB query:
   
     ```javascript
     db.your_collection_name.countDocuments();
     ```

   **Check for Missing Data:**
   - Ensure that all necessary fields are populated, and no data is missing from the documents.
   - You can perform a basic query in MongoDB to inspect the documents:
   
     ```javascript
     db.your_collection_name.find().pretty();
     ```

   **Verify Relationships:**
   - If you have embedded related data in MongoDB documents, check that the related information has been correctly embedded.
   - If you used references, ensure that the referencing is intact (check for foreign key-like references or embedded document IDs).

5. **Final Testing:**
   - Test the data in MongoDB by performing various queries. For example, if your MySQL tables had foreign key constraints, test the relationships in MongoDB by querying documents with embedded data or referenced documents.
   - Run sample queries to ensure that the data is accessible and usable in the way you expect. For example:
   
     ```javascript
     db.your_collection_name.find({ "field_name": "value" });
     ```
   - Additionally, test more complex aggregation queries, which may involve grouping or filtering data, to ensure MongoDB handles the data appropriately.

#### Conclusion

Migrating data from **MySQL Workbench to MongoDB Compass** is a straightforward process involving data export, transformation, and import. By following the outlined steps, you can ensure that your data is successfully moved from a relational MySQL database to a document-based MongoDB collection.

The key steps involve:
- **Exporting** the data from MySQL Workbench to CSV or JSON.
- **Transforming** the data into a MongoDB-compatible format, considering MongoDB’s schema flexibility.
- **Importing** the data into MongoDB using MongoDB Compass, which provides an easy-to-use interface for the import process.
- **Verifying** the integrity and accuracy of the imported data in MongoDB.

**OUTPUT**:

[company_db.employees.csv](https://github.com/user-attachments/files/18608679/company_db.employees.csv)

[employee salaries to rank them within their departments.csv](https://github.com/user-attachments/files/18608678/employee.salaries.to.rank.them.within.their.departments.csv)

[Data Migration Report.docx](https://github.com/user-attachments/files/18608650/Data.Migration.Report.docx)
