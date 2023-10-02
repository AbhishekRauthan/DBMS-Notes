[[Part 1. 1. PostgreSQL Introduction|Previous Note ]] [[Part 2. NoSQL -> Understanding|Next Note]]
# What is Scheduling, and why is it required?

When multiple transactions are running concurrently, then a sequence is needed in which the operations are to be performed because _at a time, only one operation can be performed on the database_. This sequence of operations is known as Schedule, and this process is known as Scheduling.

> *Scheduling is the technique of preserving the order of the operations from one transaction to another while executing such concurrent transactions. A series of operations from one transaction to another transaction is known as a schedule.*

**When multiple transactions execute simultaneously in an unmanageable manner, then it might lead to several problems, which are known as concurrency problems. In order to overcome these problems, scheduling is required.**

## Types of Schedules

Mainly there are 2 types of schedules:

- Serial Schedule
- Non Serial Schedule

Given below is a flowchart to show all types:

![[schedule types.svg]]

### **Serial Schedules:**  
Schedules in which the transactions are executed non-interleaved, i.e., a serial schedule is one in which no transaction starts until a running transaction has ended are called serial schedules.

### **Non-Serial Schedule:**  
This is a type of Scheduling where the operations of multiple transactions are interleaved. This might lead to a rise in the concurrency problem. The transactions are executed in a non-serial manner, keeping the end result correct and same as the serial schedule.

Unlike the serial schedule where one transaction must wait for another to complete all its operation, in the non-serial schedule, the other transaction proceeds without waiting for the previous transaction to complete. This sort of schedule does not provide any benefit of the concurrent transaction. It can be of two types namely, Serializable and Non-Serializable Schedule.

#### **Serializable:**  
This is used to maintain the consistency of the database. It is mainly used in the Non-Serial scheduling to verify whether the scheduling will lead to any inconsistency or not. On the other hand, a serial schedule does not need the serviceability because it follows a transaction only when the previous transaction is complete. The non-serial schedule is said to be in a serialisable schedule only when it is equivalent to the serial schedules, for an n number of transactions. Since concurrency is allowed in this case thus, multiple transactions can execute concurrently. A serialisable schedule helps in improving both resource utilisation and CPU throughput. These are of two types:
#### **Conflict Serializable**  
A schedule is called conflict serialisable if it can be transformed into a serial schedule by swapping non-conflicting operations. Two operations are said to be conflicting if all conditions satisfy:
- They belong to different transactions
- They operate on the same data item
- At Least one of them is a write operation

**View Serializable**  
	A Schedule is called view serializable if it is view equal to a serial schedule (no overlapping transactions). A conflict schedule is a view serializable but if the serializability contains blind writes, then the view serializable does not conflict serializable.

### **Non-Serializable:**  
The non-serializable schedule is divided into two types, Recoverable and Non-recoverable Schedule.
1. **Recoverable Schedule**  
	Schedules in which transactions commit only after all transactions whose changes they read commit are called recoverable schedules.

There can be three types of recoverable schedule:
1. **Cascading Schedule:**
    Also called Avoids cascading aborts/rollbacks (ACA). When there is a failure in one transaction and this leads to the rolling back or aborting other dependent transactions, then such scheduling is referred to as Cascading rollback or cascading abort.

 2. **Cascade less Schedule**  
	Schedules in which transactions read values only after all transactions whose changes they are going to read commit are called cascade less schedules. Avoids that a single transaction abort leads to a series of transaction rollbacks. A strategy to prevent cascading aborts is to disallow a transaction from reading uncommitted changes from another transaction in the same schedule. 

3. **Strict Schedule** 
	If in a schedule, a transaction is neither allowed to read nor write a data item until the last transaction that has written it is committed or aborted, then such a schedule is called as a **Strict Schedule**.