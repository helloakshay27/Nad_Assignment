<?php
include('db.php');

class Member
{
    private $db;

    public function __construct($db)
    {
        $this->db = $db;
    }

    public function getAllMembers()
{
    try {
        // Retrieve all members from the database
        $query = "SELECT * FROM members";
        $stmt = $this->db->prepare($query);
        $stmt->execute();
        $members = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $members;
    } catch (PDOException $e) {
        // Handle the exception, e.g., log the error or show a user-friendly message
        die("Error fetching members: " . $e->getMessage());
    }
}

}

if (isset($_GET['api'])) {
    try {
        $member = new Member($db);
        $membersList = $member->getAllMembers();

        if ($membersList !== false) {
            echo json_encode($membersList);
        } else {
            echo json_encode(['error' => 'Failed to fetch members']);
        }
    } catch (Exception $ex) {
        // Log the exception
        error_log("Exception: " . $ex->getMessage());
        echo json_encode(['error' => 'Internal server error']);
    }
}

