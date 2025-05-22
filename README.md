
---

# 🧑‍🎓 Student Management System (Java Swing)

A simple desktop-based Student Management System built using Java Swing. This GUI application allows teachers to manage student records with name, roll number, and subject-wise grades for Maths, Physics, and Chemistry.

---

## 💡 Features

* Role-based access:

  * **Teacher mode**: Add, edit, delete, save, and load student records.
  * **Student mode**: View-only access to student records.
* Secure access for teachers (admin credentials: `admin` / `1234`)
* Subject-wise grade entry and display
* Persistent data storage using object serialization (`students.dat`)
* Simple, user-friendly graphical interface

---

## 🛠️ Technologies Used

* Java SE (Swing for GUI)
* Object Serialization for file storage
* Java Collections (`ArrayList`, `HashMap`)

---

## 🚀 How to Run

To **run this Java Swing + MySQL-based Student Management System GUI** on your PC, follow this **step-by-step setup** process:

---

### ✅ **Step 1: Install Required Software**

1. **Install Java Development Kit (JDK)**

   * Download & install [JDK](https://www.oracle.com/java/technologies/javase-downloads.html) (preferably Java 8 or later).
   * Set up `JAVA_HOME` and add JDK's `bin` folder to your system `PATH`.

2. **Install an IDE (Optional but Recommended)**

   * Use [IntelliJ IDEA](https://www.jetbrains.com/idea/), [Eclipse](https://www.eclipse.org/), or [NetBeans](https://netbeans.apache.org/) for easy development.

3. **Install MySQL Server**

   * Download & install [MySQL Community Edition](https://dev.mysql.com/downloads/mysql/).
   * During setup, **note the root password** you set (you’ll need this later).
   * Start MySQL Server using the MySQL Workbench or command-line tools.

---

### ✅ **Step 2: Create MySQL Database**

1. Open **MySQL Workbench** or command-line terminal and run:

```sql
CREATE DATABASE student_db;
USE student_db;
```

> ⚠️ No need to create tables manually — the code auto-generates them when it first runs.

---

### ✅ **Step 3: Setup JDBC Driver**

1. Download the **MySQL JDBC driver** (`mysql-connector-java`):

   * Get it from: [https://dev.mysql.com/downloads/connector/j/](https://dev.mysql.com/downloads/connector/j/)

2. **Add JDBC driver to your project**:

   * **In IntelliJ**: File > Project Structure > Libraries > + Add the `.jar` file.
   * **In Eclipse**: Right-click project > Build Path > Configure Build Path > Add External JARs > Select `.jar`.

---

### ✅ **Step 4: Create Your Java File**

1. Copy the full Java code into a file called:
   `StudentManagementSystem.java`

2. Make sure it's in a folder on your system. This file contains everything (GUI, model, database operations).

---

### ✅ **Step 5: Update Database Credentials in Code**

In the `StudentDAO` class, change:

```java
private static final String USER = "root";
private static final String PASSWORD = "password"; // change this
```

➡️ Replace `"password"` with **your actual MySQL root password**.

---

### ✅ **Step 6: Compile & Run**

If you're using an IDE:

* Just **click Run** or use the green arrow button.

If you're using command line:

1. Navigate to your `.java` file directory.
2. Compile it:

```bash
javac -cp .;mysql-connector-java-<version>.jar StudentManagementSystem.java
```

> Replace `<version>` with the actual JDBC jar version (e.g., `mysql-connector-java-8.0.33.jar`).

3. Run it:

```bash
java -cp .;mysql-connector-java-<version>.jar StudentManagementSystem
```

---

### ✅ **Step 7: First Launch**

* When you run the program:

  * It will prompt: *“Are you a teacher or student?”*
  * If **teacher**, enter:

    * Username: `admin`
    * Password: `1234`
  * If credentials are wrong, it defaults to student mode (read-only).

---

### ✅ **Troubleshooting Tips**

* **JDBC Error**? Ensure JDBC jar is in classpath.
* **Access Denied (SQL)**? Check MySQL username/password.
* **"Table doesn't exist" error**? Try deleting and re-running the DB initialization.
* **GUI not showing up**? Make sure `setVisible(true);` is called (it's there in your code implicitly via `JFrame` constructor).

---

### 🎉 You're Ready!

Once running, you'll have a working Student Management System where you can:

* Add/edit/delete student records
* Store subject grades
* Store data persistently using MySQL backend

---

## 📂 File Structure

```
├── StudentManagementSystem.java
└── students.dat   # (auto-generated after saving data)
```

---

## 🔐 Admin Credentials (for Teacher Mode)

* **Username:** `admin`
* **Password:** `1234`

---

## 📌 Notes

* In **student mode**, all edit-related buttons and fields are disabled.
* The student list and data are saved in a file named `students.dat` in the project directory.

---

## 📸 Screenshots


![image (1)](https://github.com/user-attachments/assets/b92516c0-401c-4dd4-95b3-2e791b1d7483)


![Screenshot 2025-05-21 092931](https://github.com/user-attachments/assets/adae600d-e94f-4ba9-b95e-ffc93f935ab7)


---

## 🧾 License

This project is open-source and free to use for educational purposes.

---
