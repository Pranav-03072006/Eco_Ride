# EcoRide 🌿🚕

EcoRide is a Java-based web application designed to facilitate ride-booking and cab management, primarily tailored for employee transportation. Built with Struts 2 and Hibernate, it provides a seamless interface for users to book rides, manage their accounts, and for operators to handle requests efficiently.

## 🚀 Features

- **User Authentication:** Secure signup and login for employees and operators.
- **Ride Booking:** Easy-to-use interface for employees to request and schedule rides.
- **Role-based Dashboards:** Dedicated dashboards for employees (`empdashboard.jsp`) and operators/admins (`authdashboard.jsp`).
- **Account Management:** Users can view and update their account settings, as well as manage or delete their profiles.
- **Booking Management:** Employees can track their current and past ride requests.

## 🛠️ Technology Stack

- **Frontend:** HTML5, CSS, JSP (JavaServer Pages)
- **Backend:** Java 
- **Web Framework:** Apache Struts 2
- **ORM Framework:** Hibernate 3.0
- **Database:** MySQL
- **Build Tool:** Ant (`build.xml`)

## 📂 Project Structure

- `src/java/`: Contains Java source code, Struts action classes, and Hibernate mappings (`.hbm.xml`).
- `web/`: Contains all frontend assets, JSP pages, and `WEB-INF`.
- `web/WEB-INF/`: Contains `web.xml`, Struts configuration, and project libraries (`lib`).
- `build.xml`: Ant build script for compiling and packaging the application.

## ⚙️ Prerequisites

To run this project locally, ensure you have the following installed:

1. **Java Development Kit (JDK):** Version 8 or higher.
2. **Apache Tomcat:** Version 8 or higher (or any compatible Servlet container).
3. **MySQL Server:** Running locally on port `3306`.
4. **Apache Ant** (Optional, if you wish to build via command line instead of an IDE).
5. An IDE like **Apache NetBeans** or **Eclipse** (Enterprise Java edition).

## 🗄️ Database Setup

1. Ensure MySQL is running on `localhost:3306`.
2. The application is configured to connect to a database named `mysql` (default schema) with username `root` and password `root`. 
   *(Note: You can update these credentials in `src/java/hibernate.cfg.xml` to match your local setup).*
3. Hibernate is configured with `hibernate.hbm2ddl.auto = update`, so the tables (`Employee`, `EmpRequest`, `Operator`) will be created automatically upon deployment.

## 🚀 Installation & Setup

1. **Clone the repository:**
   ```bash
   git clone https://github.com/yourusername/EcoRide.git
   cd EcoRide
