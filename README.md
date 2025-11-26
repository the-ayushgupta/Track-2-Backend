# Track-3 Full-stack Application

This is a back-end application using Node.js/Express.

## Tech Stack

**Backend:**
*   Node.js
*   Express.js
*   MySQL (via Sequelize ORM)

## Setup Steps

To get this project up and running locally, follow these steps:

### 1. Clone the repository

```bash
https://github.com/the-ayushgupta/Track-2-Backend.git
cd Track-2-Backend
```

### 2. Backend Setup

#### Install Dependencies

```bash
npm install
```

#### Database Configuration

This application uses MySQL. You need to:

1.  Ensure you have a MySQL server running.
2.  Create a database named `employee_task_db`.
3.  Update the database credentials in `config/db.js` if they are different from:
    *   **Database Name:** `employee_task_db`
    *   **Username:** `root`
    *   **Password:** `Khsi12234#@!`

#### Run the Backend

```bash
npm start
```

This will start the backend server on `http://localhost:5000`.
