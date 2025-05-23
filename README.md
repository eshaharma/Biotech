# 🧑‍🎓 Student Management System (Java Swing)

A simple desktop-based Student Management System built using Java Swing. This GUI application allows teachers to manage student records with subject-wise grades for Maths, Physics, and Chemistry. It supports secure teacher login and saves data locally using file-based serialization.

---

## 💡 Features

- **Role-based access:**
  - 👨‍🏫 **Teacher mode**: Add, edit, delete, and save student records.
  - 👨‍🎓 **Student mode**: View-only access to student records.
- 🔐 Secure teacher login (Username: `admin`, Password: `1234`)
- 📊 Subject-wise grade entry and display
- 💾 Persistent storage using `students.dat` (Java object serialization)
- 🖥️ Simple and intuitive Java Swing GUI

---

## 🛠️ Technologies Used

- Java SE 8+ (Core Java + Swing for GUI)
- Java Object Serialization (`ObjectOutputStream`, `ObjectInputStream`)
- Java Collections (`ArrayList`, `HashMap`)

---

## 🚀 How to Run

### ✅ Step 1: Install Java

- Install the [Java Development Kit (JDK)](https://www.oracle.com/java/technologies/javase-downloads.html) (version 8 or above).
- Make sure Java is added to your system `PATH`.

### ✅ Step 2: Compile the Code

Navigate to the directory where `StudentManagementSystem.java` is located and run:

```bash
javac StudentManagementSystem.java
````

### ✅ Step 3: Run the Application

```bash
java StudentManagementSystem
```

Or simply click **Run** in your IDE (IntelliJ, Eclipse, etc.).

---

## 🧪 Usage Guide

1. On launch, select your role: **Teacher** or **Student**.
2. **Teacher Mode**:

   * Login with credentials:

     * Username: `admin`
     * Password: `1234`
   * You can now add, edit, delete, and save student records.
3. **Student Mode**:

   * Access is read-only.
   * Students can view the grades but cannot make changes.

---

## 📂 File Structure

```
├── StudentManagementSystem.java
└── students.dat   # (auto-generated after saving student data)
```

---

## 🔐 Admin Credentials

| Role    | Username | Password |
| ------- | -------- | -------- |
| Teacher | `admin`  | `1234`   |

*Incorrect credentials will result in student (read-only) mode.*

---

## 📌 Notes

* `students.dat` is created in the project folder to store student records persistently.
* If the file is deleted, data will be lost.
* All functionality (adding, saving, etc.) is disabled in student mode.
* Designed for small-scale, local use only.

---

## 📸 Screenshots


![image (1)](https://github.com/user-attachments/assets/22e0d014-a6bd-4268-8322-eb6b270f2ae3)


![Screenshot 2025-05-21 092931](https://github.com/user-attachments/assets/a649d6d3-4d8e-4ed3-8522-2930b4a5bd93)


---

## 🧾 License

This project is open-source and free to use for educational or personal learning purposes.

---

## 🤝 Contributions

Pull requests are welcome! If you’d like to add features or refactor the codebase, feel free to fork and submit a PR.

---
