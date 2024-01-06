# Nad_Assignment


## Getting Started

1. Ensure XAMPP is installed and running.
2. Create a MySQL database in phpMyAdmin with the specified configuration.
3. Navigate to `http://localhost/test/your_dir_name` to access the application.

## Features

- Display a list of members in a tree structure.
- Add new members with parent selection.
- Uses PHP OOP, PDO for database interaction, and jQuery for dynamic actions.

## Usage

1. Open your web browser and navigate to `http://localhost/test/your_dir_name`.
2. View the hierarchical list of members.
3. Click the "Add Member" button to add a new member.
4. Fill in the form, select the parent member, and click "Save Changes."
5. The new member will be dynamically added to the existing tree structure.

## Database Structure

```sql
CREATE TABLE Members (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    CreatedDate DATETIME,
    Name VARCHAR(50),
    ParentId INT,
    FOREIGN KEY (ParentId) REFERENCES Members(Id)
);
