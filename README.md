# 📊 SQL Masterclass: From Netflix Streaming to Hospital Management

Welcome to my SQL journey! This repository is a comprehensive, hands-on guide to mastering **MySQL**. It tracks my progress from understanding basic database foundations to building a fully functional **CRUD-based Hospital Management System**.



---

## 📂 Project Roadmap
The repository is organized into 10 specialized folders. Each folder contains `.sql` scripts that solve real-world data challenges using a **Netflix Case Study**.

| Folder | Module | Core Concepts |
| :--- | :--- | :--- |
| **01** | 🧱 Foundations | RDBMS Basics, MySQL Setup, Syntax |
| **02** | 🏗️ DDL | CREATE, ALTER, DROP, TRUNCATE |
| **03** | 🔒 Constraints | Primary/Foreign Keys, UNIQUE, CHECK, DEFAULT |
| **04** | ✍️ DML | INSERT, UPDATE, DELETE (Data Management) |
| **05** | 🔍 DQL | SELECT, WHERE, LIKE, ORDER BY, LIMIT |
| **06** | 🧮 Functions | COUNT, SUM, AVG, GROUP BY, HAVING |
| **07** | 🔗 Joins | INNER, LEFT, RIGHT, SELF JOIN, UNION |
| **08** | ⚡ Advanced | Subqueries, Views, B-Tree Indexing |
| **09** | 🛡️ Control | DCL (Permissions), TCL (COMMIT, ROLLBACK) |
| **10** | 🎓 **Capstone** | **Full CRUD Hospital Management Project** |

---

## 📽️ Phase 1: The Netflix Case Study
In the first 9 modules, I built a simulated backend for a streaming service. 
- **User Management:** Handled secure sign-ups and unique profile identification.
- **Content Discovery:** Built search queries to filter movies by genre, rating, and duration.
- **Relational Logic:** Linked users to their watch history and implemented a **Self-Join** for a referral system.
- **Optimization:** Used `EXPLAIN` and `INDEX` to ensure the search bar remains lightning-fast as the catalog grows.

[Image of SQL Join types Venn Diagram]

---

## 🏥 Phase 2: Hospital Management System (Final Project)
The **Capstone Project** in Folder 10 demonstrates a complete real-world application of the **CRUD** lifecycle.

### Key Features:
* **Create:** Dynamic registration for Patients, Doctors, and Departments.
* **Read:** Complex multi-table joins to generate medical directories and emergency contact lists.
* **Update:** Implemented **ACID-compliant Transactions** to ensure that patient discharge and final billing occur as a single, atomic unit.
* **Delete:** Managed data cleanup while respecting Foreign Key constraints.
* **Security:** Created Role-Based Access Control (RBAC) to restrict sensitive data access to authorized personnel only.

---

## 🛠️ Tech Stack & Tools
- **Engine:** MySQL 8.0+
- **Editor:** MySQL Workbench / Command Line Interface
- **Design:** Relational Database Modeling (ER Diagrams)

---

## 🚀 How to Run These Scripts
1. Clone this repository to your local machine.
2. Open **MySQL Workbench**.
3. Execute the scripts in numerical order (`01_...` through `10_...`) to build the database from scratch.
4. Check the comments within each `.sql` file for detailed explanations of the logic.

---

### 👤 Contact & Contribution
I am a passionate Data/Backend enthusiast. Feel free to explore the code, open an issue, or reach out for collaborations!

**Happy Coding!** 🚀
