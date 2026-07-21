## data 
 * collection of raw bytes
 * meaningless
 * after processing/interprate -> meaning->informarion
```
22.2   56       170 ->data->no meaning 
22.2 bmi   50 weight(kg)       170 height(cm) ->processed-> meaningfull->information 
```

DBMS vs File System; 3-tier architecture; data models; schema vs instance.

database-> where data stored in the way it can 
easily be accesed,managed and updated.

Management system(ms)->set of program to update,
add,acceces,delete data .

DBNS-> storing of interrelated data and have a set of
program to access , delete , add , update data. 


## DBMS vs File System

| Feature | File System | DBMS |
|---------|-------------|------|
| **Data Redundancy** | High (duplicate data) | Low (normalized) |
| **Data Consistency** | Low (inconsistent updates) | High (ACID properties) |
| **Data Sharing** | Difficult | Easy (multi-user access) |
| **Security** | Limited | Granular (user roles, permissions) |
| **Backup & Recovery** | Manual, difficult | Automated, point-in-time recovery |
| **Data Integrity** | No enforcement | Constraints, triggers, rules |
| **Concurrency** | No control | Locking, transactions |

---

## SQL Isolation Levels

| Isolation Level | Dirty Read | Non-Repeatable Read | Phantom Read |
|-----------------|------------|---------------------|--------------|
| **Read Uncommitted** | ✅ Possible | ✅ Possible | ✅ Possible |
| **Read Committed** | ❌ Prevented | ✅ Possible | ✅ Possible |
| **Repeatable Read** | ❌ Prevented | ❌ Prevented | ✅ Possible |
| **Serializable** | ❌ Prevented | ❌ Prevented | ❌ Prevented |


### 🔄 Data Redundancy
> The duplication of the same data in multiple places.
* **Why it matters:** Wastes storage space and leads to data inconsistency (e.g., updating an address in one file but forgetting another).

### 🎯 Data Consistency
> Ensuring that data is accurate, uniform, and the same across the entire system at any given time.
* **Why it matters:** If a user updates their phone number, it should reflect everywhere instantly.

###  Data Sharing
> The ability of multiple users or applications to access and modify the same data simultaneously.
* **Why it matters:** File systems lock files when one user opens them; DBMS allows controlled multi-user access.

### 🔒 Security
> Protecting data from unauthorized access, modification, or destruction.
* **Why it matters:** DBMS provides granular control (e.g., User A can *read* data, but only User B can *delete* it).

### 💾 Backup & Recovery
> The process of safely copying data and restoring it in case of system failure, crashes, or human error.
* **Why it matters:** File systems require manual copying; DBMS has automated logs to recover up to the exact second of a crash.

### ✅ Data Integrity
> Ensuring the data remains accurate, valid, and follows predefined business rules.
* **Why it matters:** DBMS enforces rules (e.g., "Age cannot be negative" or "Email must be unique") so bad data never enters the system.

### ⚡ Concurrency
> The ability of the database to handle multiple transactions occurring at the exact same time without conflicts.
* **Why it matters:** Prevents issues like two people booking the exact same last seat on a flight at the same millisecond.
