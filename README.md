# Todo-App
The Firebase Todo App is a task management application that allows users to create, view, update, and delete tasks in an organized and user-friendly interface. The app leverages Firebase Firestore for backend services, enabling real-time syncing of todos across devices. 

# Firebase Todo App

A user-friendly and professional task management application built with **SwiftUI** and integrated with **Firebase Firestore** for real-time data synchronization. This app allows users to efficiently manage their tasks by adding, viewing, updating, and deleting them.

---

## Features

- **Add New Tasks**: Easily create new tasks by entering a title.
- **View Tasks**: Display all tasks in a structured list, with completed tasks visually differentiated.
- **Update Tasks**: Mark tasks as completed or edit their details.
- **Delete Tasks**: Remove tasks you no longer need with ease.
- **Real-Time Sync**: All data is stored and synced in real-time using Firebase Firestore.

---

## Screenshots

*(Add screenshots of your app here, if available)*

---

## Technical Overview

### Technologies Used
- **SwiftUI**: For a modern and responsive user interface.
- **Firebase Firestore**: For backend services, providing real-time database and cloud storage.
- **Swift Codable**: For easy encoding and decoding of `Todo` objects.

### Core Components
1. **Todo Model**: Defines the structure of tasks:
   ```swift
   struct Todo: Identifiable, Codable {
       var id: UUID
       var title: String
       var isCompleted: Bool
   }
