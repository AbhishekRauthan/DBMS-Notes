[[Part 1. 2. Schedules and locks|Next Note]]

# SQL and R DBMS (using Postgres)

## What is PostgreSQL

Postgres is a free and open source Relational Database Management System (R DBMS) evolving from [Ingres](https://en.wikipedia.org/wiki/Ingres_(database)) Project at the University of California, Berkeley.

PostgreSQL features transactions with atomicity, consistency, isolation, durability (ACID) properties, automatically updatable views, materialized views, triggers, foreign keys, and stored procedures.

## What is ACID Principles in R DBMS

ACID (atomicity, consistency, isolation, durability) is a set of properties of database transactions intended to guarantee data validity despite errors, power failures, and other mishaps.

A Database Transaction symbolises a unit of work, performed within a database management system (or similar system) against a database, that is treated in a coherent and reliable way independent of other transactions. A transaction generally represents any change in a database.

### Atomicity

Transactions are often composed of multiple statements. Atomicity guarantees that each transaction is treated as a single "unit", which either succeeds completely or fails completely: if any of the statements constituting a transaction fails to complete, the entire transaction fails and the database is left unchanged. 

An atomic system must guarantee atomicity in each and every situation, including power failures, errors, and crashes.

### Consistency

Consistency ensures that a transaction can only bring the database from one consistent state to another, making sure that any data written to the database is valid according to all defined rules, including constraints, cascades, triggers, and any combination thereof. This prevents database corruption by an illegal transaction.

### Isolation

Transactions are often executed concurrently. Isolation ensures that concurrent execution of transactions leaves the database in the same state that would have been obtained if the transactions were executed sequentially. 

### Durability

Durability guarantees that once a transaction has been committed, it will remain committed even in the case of a system failure (e.g., power outage or crash). This usually means that completed transactions (or their effects) are recorded in non-volatile memory.

## PostgreSQL in comparison to MySQL

### Similarities

- Both use structured query language (SQL) as an interface to read and edit data
- Both are open source and have strong developer community support
- Both have a built-in data backup, replication, and access control features

### Differences

- **ACID Compliance**:
   MySQL offers ACID compliance only when you use it with InnoDB and NDB Cluster storage engines or software modules. PostgreSQL is fully ACID compliant in all configurations.

- **Concurrency control**
   Multi version concurrency control (MVCC) is an advanced database feature that creates duplicate copies of records to safely read and update the same data in parallel. When you use MVCC, multiple users can read and modify the same data simultaneously without compromising data integrity.

   MySQL databases do not offer MVCC, but PostgreSQL supports this feature.
- **Indexes**
   Databases use indexes to retrieve data faster. You can index frequently accessed data by configuring the database management system to sort and store it differently from the other data.

   MySQL supports B-tree and R-tree indexing that stores hierarchically indexed data. PostgreSQL index types include trees, expression indexes, partial indexes, and hash indexes. There are more options to fine-tune your database performance requirements as you scale.

- **Data types**
   MySQL is a purely relational database. PostgreSQL, on the other hand, is an object-relational database. This means that in PostgreSQL, you can store data as objects with properties. Objects are a common data type in many programming languages like Java and .NET. Objects support paradigms like parent-child relationships and inheritance.

   Working with PostgreSQL is more intuitive for database developers. PostgreSQL also supports other additional data types like arrays and XML.

- **Views**
   A view is a data subset that the database system creates by pulling relevant data from multiple tables.

   While MySQL supports views, PostgreSQL offers advanced view options. For example, you can precompute some values in advance (like the total value of all orders over a given period) to create materialized views. Materialized views improve database performance for complicated queries.

- **Stored procedures**
   Stored procedures are structured query language (SQL) queries or code statements you can write and save in advance. You can reuse the same code repeatedly, which makes database management tasks more efficient.

   While both MySQL and PostgreSQL support stored procedures, PostgreSQL allows you to call stored procedures written in languages other than SQL.

- **Triggers**
   A trigger is a stored procedure that runs automatically when a related event occurs in the database management system.

   In a MySQL database, you can only use _AFTER_ and _BEFORE_ triggers for SQL _INSERT_, _UPDATE_, and _DELETE_ statements. That means the procedure will run automatically before or after the user modifies the data. In contrast, PostgreSQL supports the _INSTEAD OF_ trigger, so you can run complex SQL statements using functions.