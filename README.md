
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

1. Make sure you have **Java 8 or higher** installed.

2. Compile the Java file:

   ```bash
   javac StudentManagementSystem.java
   ```

3. Run the application:

   ```bash
   java StudentManagementSystem
   ```

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

![image (1)](https://github.com/user-attachments/assets/9597434c-fa39-4fcc-b980-5fe339ad1faa)

![image](https://github.com/user-attachments/assets/93af0eaf-5ba3-4c4a-ab4c-50ace8a566eb)


---

## 🧾 License

This project is open-source and free to use for educational purposes.

---
