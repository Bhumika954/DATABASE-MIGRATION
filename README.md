# DATABASE-MIGRATION

*COMPANY*: CODTECH IT SOLUTIONS

*NAME*: BHUMIKA S

*INTERN ID*: CT04DF1481

*DOMAIN*: SQL

*DURATION*: 4 WEEKS

*MENTOR*: NEELA SANTOSH

##This task involved migrating a structured dataset from a MySQL database to a PostgreSQL database, maintaining the structure and data integrity throughout the process. The main objective was to simulate a real-world scenario where database systems need to be upgraded, transitioned, or replaced while ensuring that no data is lost or altered in the process. Such migrations are common in modern organizations during infrastructure changes, cloud adoption, software version upgrades, or performance tuning.

Tools and Editors Used
To complete this task, I used the following tools:

MySQL Workbench – This was used to view the existing database, run queries, and export the tables into CSV format. It provided a graphical interface to interact with the MySQL database where the original data was stored.

pgAdmin 4 – This is the official GUI for PostgreSQL. I used it to create a new database (task3_analysis), create the necessary tables, and attempt importing the CSV files into the PostgreSQL system.

PostgreSQL CLI (psql shell) – After running into limitations with pgAdmin's import feature (such as lack of delimiter control and permission errors), I used the PostgreSQL terminal tool. The \copy command allowed me to import data from local CSV files on my machine directly into the PostgreSQL database.

Text Editors (Notepad and Excel) – These were used to open, clean, and adjust the exported CSV files. I ensured the delimiters were consistent, headers were included or excluded correctly, and formatting matched the PostgreSQL expectations.

Description of the Process
I began by working with a database from Task 2, which included two tables: Employees and Sales. The Employees table held employee records with fields such as EmployeeID, Name, and Department. The Sales table contained records of individual sales, including SaleID, EmployeeID, SaleAmount, and SaleDate, with a foreign key linking each sale to an employee.

First, I created a new database in pgAdmin and defined both tables using CREATE TABLE statements that exactly mirrored the structure in MySQL. This included defining data types and constraints, such as primary keys and foreign key relationships.

I then exported data from MySQL Workbench into two CSV files (employees.csv and sales.csv). The exported files originally used semicolons (;) as delimiters, but PostgreSQL expected commas (,). I corrected this formatting using Notepad and Excel, and ensured that the files included proper headers and no extra blank rows.

The pgAdmin GUI failed to import the data correctly due to a lack of delimiter options and permission restrictions. Instead, I switched to the psql terminal and used the \copy command to import the data. Unlike the server-side COPY, \copy runs on the client side and allowed me to import local files easily. I executed:

pgsql
Copy
Edit
\copy Employees(EmployeeID, Name, Department) FROM 'path/employees_fixed.csv' WITH (FORMAT csv, HEADER true)
and similarly for the Sales table.

After importing, I verified the data using simple SELECT * FROM Employees and SELECT * FROM Sales queries inside pgAdmin. The results confirmed that the structure was identical, and all records were present and correctly linked between both tables.

What I Learned
This task taught me how database migrations work not just technically, but practically — with all the small challenges that can occur when working across systems. I learned:

How to export structured data from MySQL and clean it using CSV format

The importance of matching schema definitions exactly between systems

How to use both GUI-based and command-line database tools

The difference between COPY (server-side) and \copy (client-side) in PostgreSQL

How to resolve common issues like file path access, delimiters, foreign key integrity, and formatting mismatches

It also helped me understand how small inconsistencies (like a semicolon vs comma, or an extra blank line) can cause an entire data import to fail, and how attention to detail is crucial during a migration.

Where This Can Be Applied
This kind of task is directly applicable in many professional environments:

When organizations shift from one database system to another, e.g., from MySQL to PostgreSQL or from on-premise to cloud-based databases like Amazon RDS or Google Cloud SQL

During software upgrades that require backend system changes

When consolidating databases from different departments or applications into one unified platform

In data engineering pipelines where raw data must be transformed and migrated between staging and production environments

Companies often undergo such migrations to reduce licensing costs, increase performance, improve scalability, or achieve better compatibility with modern tools.

Conclusion
Task 3 was a deeply practical exercise that reflected real-life responsibilities of data engineers, backend developers, and database administrators. It was not just about transferring data, but about thinking through structure, validation, error-handling, and compatibility. It challenged me to step out of GUI-based comfort zones and deal with raw SQL and command-line tools to solve problems effectively.

After completing this task, I feel more confident working across database systems and ensuring that data remains reliable and intact when moved. This knowledge will help me in future roles where I might need to manage migrations, data backups, cross-platform support, or cloud-based transitions.

#output

![Image](https://github.com/user-attachments/assets/26a10a74-25f5-4b83-b207-da5202bc5601)

![Image](https://github.com/user-attachments/assets/c273eeb8-dc67-4b11-b109-c9786f3f25a4)

![Image](https://github.com/user-attachments/assets/5daa583a-8961-46a0-aabf-2292202b9ae9)
