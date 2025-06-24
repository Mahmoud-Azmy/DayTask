# 📅 DayTask

**DayTask** is a sleek and intuitive task management Flutter application that helps users manage their daily activities efficiently. It supports task creation, editing, and viewing based on specific dates and times, all stored locally for offline access.

---

## 📸 Screenshots

> ![image](https://github.com/user-attachments/assets/7351a57a-4c0e-4555-b1e7-d7a975bb0661)
> ![image](https://github.com/user-attachments/assets/ad8b7129-f346-400c-9f58-053b44d81d22)


---

## ✨ Purpose and Scope

DayTask is designed to:

- Help users manage daily tasks with ease
- Provide a modern, user-friendly interface
- Allow task creation, editing, and filtering by day
- Store all task data locally using Hive for offline use

---

## 🧠 Core System Components

### 🖥️ Presentation Layer
This layer includes all UI components users interact with:
- Task Creation Screen
- Task Editing Screen
- Task Listing & Schedule Screen

---

### 🔁 State Management Layer
Implements the **BLoC pattern** using **Cubits**:

- `CreateTaskCubit`: Handles task creation and editing logic
- `GetTasksCubit`: Manages task retrieval and filtering based on selected date

---

### 🗂️ Data Layer

- `HomeRepo`: Abstract interface for task operations
- `HomeRepoImpl`: Repository implementation using Hive
- `TaskModel`: Model class representing individual tasks

---

### 💾 Storage Layer

- **Hive**: NoSQL lightweight database for local task storage

---

## 🏗️ Application Startup Flow

1. Initializes Flutter bindings
2. Sets up `Bloc.observer` for debugging state transitions
3. Registers `TaskModelAdapter` with Hive
4. Opens the Hive box used for storing tasks
5. Handles global error capturing
6. Creates the main app widget with BLoC providers
7. Configures routing using `go_router`

---

## 🔁 Key Data Flows

### ➕ Task Creation/Editing
- UI triggers methods in `CreateTaskCubit`
- Cubit interacts with repository to save changes in Hive

### 📥 Task Retrieval
- `GetTasksCubit` requests tasks from the repository
- Repository fetches and filters tasks from Hive

### 📡 State Updates
- Cubits emit new states based on actions
- UI rebuilds to reflect the updated state

---

## 🛠️ Key Technologies and Dependencies

| Technology         | Purpose                                       |
|--------------------|-----------------------------------------------|
| Flutter            | UI development framework                      |
| flutter_bloc       | BLoC state management                         |
| Hive               | Local database for task persistence           |
| go_router          | Declarative navigation and routing            |
| intl               | Date/time formatting and localization         |

---

## 📋 Core Features

### ✅ Task Management
- **Task Creation**: Add new tasks with title, description, date, and time
- **Task Editing**: Modify existing task details
- **Task Listing**: View tasks organized by the selected date
- **Day Selection**: Scrollable calendar to browse daily tasks

---

## 🧱 Architecture Summary

DayTask follows best practices for scalable and maintainable Flutter development:

- **Repository Pattern** for clean data abstraction
- **BLoC Pattern** for predictable and testable state management
- **Centralized Routing** using `go_router`
- **Hive Integration** with proper initialization and serialization
- **Separation of Concerns** across UI, logic, and storage layers

---



