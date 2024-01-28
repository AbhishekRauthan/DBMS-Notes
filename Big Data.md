# YARN

YARN (Yet Another Resource Negotiator) is a resource/cluster management system. It has been part of Apache Hadoop since v2.0.

created by separating the processing engine and the management function of MapReduce. It monitors and manages workloads, maintains a multi-tenant environment, manages the high availability features of Hadoop, and implements security controls.

supports multiple processing models in addition to MapReduce.

## Benefits of YARN

- **Scalability:** Map Reduce 1 hits ascalability bottleneck at 4000 nodes and 40000 task, but Yarn is designed for 10,000 nodes and 1 lakh tasks.
- **Utiliazation:** Node Manager manages a pool of resources, rather than a fixed number of the designated slots thus increasing the utilization.
- **Multitenancy:** Different version of MapReduce can run on YARN, which makes the process of upgrading MapReduce more manageable.

comes with hadoop installation.

# Hive

Hive is a data warehouse system which is used to analyze structured data. It is built on the top of Hadoop developed by Facebook.

It runs SQL like queries called HQL (Hive query language) which gets internally converted to MapReduce jobs.

### Features of Hive

These are the following features of Hive:

- Hive is fast and scalable.
- It provides SQL-like queries (i.e., HQL) that are implicitly transformed to MapReduce or Spark jobs.
- It is capable of analysing large datasets stored in HDFS.
- It allows different storage types such as plain text, RCFile, and HBase.
- It uses indexing to accelerate queries.
- It can operate on compressed data stored in the Hadoop ecosystem.
- It supports user-defined functions (UDFs) where user can provide its functionality.

### Limitations of Hive

- Hive is not capable of handling real-time data.
- It is not designed for online transaction processing.
- Hive queries contain high latency.

## Pre-requisite

- **Java Installation** - Check whether the Java is installed or not using the following command.
```shell
$ java -version
```
- **Hadoop Installation** - Check whether the Hadoop is installed or not using the following command.
```shell
$ hadoop version
```

## Steps to install Apache Hive

- Download the Apache Hive tar file.

http://mirrors.estointernet.in/apache/hive/hive-1.2.2/

- DUnzip the downloaded tar file.
  ```shell
  tar -xvf apache-hive-1.2.2-bin.tar.gz
```
- DOpen the bashrc file.
 ```shell
$ sudo nano ~/.bashrc  
```
- DNow, provide the following HIVE_HOME path.

```shell
export HIVE_HOME=/home/codegyani/apache-hive-1.2.2-bin  
export PATH=$PATH:/home/codegyani/apache-hive-1.2.2-bin/bin
```


- DUpdate the environment variable. ```
```shell
$ source ~/.bashrc
```

- DLet's start the hive by providing the following command.
 ```shell
 $ hive
```

# Pig

Apache Pig is a high-level data flow platform for executing MapReduce programs of Hadoop. The language used for Pig is Pig Latin.

The Pig scripts get internally converted to Map Reduce jobs and get executed on data stored in HDFS. Apart from that, Pig can also execute its job in Apache Tez or Apache Spark.

Pig can handle any type of data, i.e., structured, semi-structured or unstructured and stores the corresponding results into Hadoop Data File System. Every task which can be achieved using PIG can also be achieved using java used in MapReduce.

## Advantages of Apache Pig

- Less code - The Pig consumes less line of code to perform any operation.
- Reusability - The Pig code is flexible enough to reuse again.
- Nested data types - The Pig provides a useful concept of nested data types like tuple, bag, and map.

## Pre-requisite

- **Java Installation** - Check whether the Java is installed or not using the following command.
```shell
$ java -version
```
- **Hadoop Installation** - Check whether the Hadoop is installed or not using the following command.
```shell
$ hadoop version
```

## Steps to install Apache Pig

- Download the Apache Hive tar file.

http://mirrors.estointernet.in/apache/hive/hive-1.2.2/

- DUnzip the downloaded tar file.
  ```shell
  tar -xvf pig-0.16.0.tar.gz
```
- DOpen the bashrc file.
 ```shell
$ sudo nano ~/.bashrc  
```
- DNow, provide the following PIG_HOME path.

```shell
export PIG_HOME=/home/hduser/pig-0.16.0  
export PATH=$PATH:$PIG_HOME/bin
```


# HDFC

HDFS stands for Hadoop Distributed File System. HDFS operates as a distributed file system designed to run on commodity hardware.

HDFS is fault-tolerant and designed to be deployed on low-cost, commodity hardware. HDFS provides high throughput data access to application data and is suitable for applications that have large data sets and enables streaming access to file system data in Apache Hadoop.

## Advantages of Hadoop Distributed File System

As an open source subproject within Hadoop, HDFS offers five core benefits when dealing with big data:

1. **Fault tolerance**. HDFS has been designed to detect faults and automatically recover quickly ensuring continuity and reliability.
2. **Speed**, because of its cluster architecture, it can maintain 2 GB of data per second.
3. **Access to more types of data**, specifically Streaming data. Because of its design to handle large amounts of data for batch processing it allows for high data throughput rates making it ideal to support streaming data.
4. **Compatibility and portability**. HDFS is designed to be portable across a variety of hardware setups and compatible with several underlying operating systems ultimately providing users optionality to use HDFS with their own tailored setup. These advantages are especially significant when dealing with big data and were made possible with the particular way HDFS handles data.

# Sqoop

Sqoop is a command-line interface application for transferring data between relational databases and Hadoop.

It supports incremental loads of a single table or a free form SQL query as well as saved jobs which can be run multiple times to import updates made to a database since the last import.Using Sqoop, Data can be moved into HDFS/hive/hbase from MySQL/ PostgreSQL/Oracle/SQL Server/DB2 and vise versa.

Similar installation steps as Pig

# Spark

Apache Spark is an open-source, distributed processing system used for big data workloads. It utilizes in-memory caching, and optimized query execution for fast analytic queries against data of any size. 

It provides development APIs in Java, Scala, Python and R, and supports code reuse across multiple workloads—batch processing, interactive queries, real-time analytics, machine learning, and graph processing.

## Key differences: Apache Spark vs. Apache Hadoop

Outside of the differences in the design of Spark and Hadoop MapReduce, many organizations have found these big data frameworks to be complimentary, using them together to solve a broader business challenge.

similar installation to pig.