# 🧑‍🎓 Student Management System (Java Swing + MySQL)

A simple, desktop-based Student Management System built using Java Swing. This GUI application allows teachers to manage student records (name, roll number, subject-wise grades for Maths, Physics, and Chemistry) using a MySQL backend.

---

## 💡 Features

- Role-based access:
  - **Teacher mode**: Add, edit, delete, save, and load student records.
  - **Student mode**: View-only access to student records.
- Secure login for teachers (admin credentials: `admin` / `1234`)
- Subject-wise marks entry and display
- Persistent data storage using **MySQL Database**
- User-friendly GUI using **Java Swing**
- Automatically creates the required **database and table** on first run

---

## 🛠️ Technologies Used

- Java SE (JDK 8+)
- Swing (Java GUI)
- MySQL
- JDBC (MySQL Connector)
- Java Collections (`ArrayList`, `HashMap`)

---

## 🚀 How to Run

Follow this **step-by-step guide** to set up and run the project on your local machine.

---

### ✅ Step 1: Prerequisites

Make sure the following software is installed:

1. **Java Development Kit (JDK)**  
   - Download from: [Oracle JDK Downloads](https://www.oracle.com/java/technologies/javase-downloads.html)  
   - Set environment variables (`JAVA_HOME`, add `bin` to `PATH`)

2. **MySQL Server**  
   - Download from: [MySQL Community Server](https://dev.mysql.com/downloads/mysql/)  
   - Remember the root password during installation  
   - Start MySQL via CLI or MySQL Workbench

3. **MySQL JDBC Driver (mysql-connector-java)**  
   - Download from: [MySQL Connector/J](https://dev.mysql.com/downloads/connector/j/)  
   - Add the `.jar` to your project libraries in your IDE

4. **IDE (Optional but recommended)**  
   - IntelliJ IDEA / Eclipse / NetBeans for development and execution

---

### ✅ Step 2: MySQL Database Setup

#### 🔸 Option 1: Auto-Creation on First Run

The Java code will **automatically create the database and table** if they don’t exist.

#### 🔸 Option 2: Manual Creation (Optional)

Alternatively, you can run the provided SQL script manually:

```sql
-- Creates database and students table
CREATE DATABASE IF NOT EXISTS student_db;
USE student_db;

CREATE TABLE IF NOT EXISTS students (
    rollNo VARCHAR(20) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    mathMarks INT DEFAULT 0,
    physicsMarks INT DEFAULT 0,
    chemistryMarks INT DEFAULT 0
);
````

> 🔖 File also located in and as `sql/init.sql` 

---

### ✅ Step 3: Project Setup

1. **Download the MySQL JDBC driver** `.jar` file.
2. Add it to your classpath:

   * In IntelliJ: File > Project Structure > Libraries > Add `.jar`
   * In Eclipse: Build Path > Add External JARs > Select `.jar`

---

### ✅ Step 4: Modify DB Credentials

Open `StudentDAO.java` and update the following with your **MySQL credentials**:

```java
private static final String USER = "root";
private static final String PASSWORD = "your_mysql_password"; // 🔁 Replace this with your password
```

> 💡 Default database name is: `student_db`

---

### ✅ Step 5: Compile & Run

#### Using an IDE:

* Open project in IntelliJ or Eclipse
* Click **Run**

#### Using Command Line:

```bash
javac -cp .;mysql-connector-java-<version>.jar src/StudentManagementSystem.java
java -cp .;mysql-connector-java-<version>.jar src.StudentManagementSystem
```

> Replace `<version>` with your actual `.jar` file version
> Use `:` instead of `;` on macOS/Linux

---

### ✅ Step 6: First Launch

* App asks: **"Are you a teacher or student?"**
* If **teacher**, enter credentials:

  * Username: `admin`
  * Password: `1234`
* Invalid credentials switch to student (read-only) mode

---

## 📂 File Structure

```
student-management-system-java/
│
├── src/
│   ├── Student.java
│   └── StudentManagementSystem.java
│
├── sql/
│   └── init.sql       # MySQL script (optional)
│
├── .gitignore
└── README.md
```

---

## 🔐 Admin Credentials (for Teacher Mode)

* **Username:** `admin`
* **Password:** `1234`

---

## 📌 Notes

* **Student Mode:** All edit options are disabled (view-only)
* The program uses **MySQL** for persistent storage — no `.dat` files
* Table and database creation is handled via code — manual setup optional

---

## 📸 Screenshots


![image (1)](https://github.com/user-attachments/assets/6c35f3d4-cc9f-47c7-91b1-d7fe2805bfc2)



![Screenshot 2025-05-21 092931](https://github.com/user-attachments/assets/f9026809-733b-4fc1-9c1b-a0f084e34f04)


---

## 🧾 License

This project is open-source and free for educational use.

---

## 💬 Questions?

If you encounter issues or have suggestions, feel free to raise them via GitHub Issues.

```
