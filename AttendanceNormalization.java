import java.sql.*;
import java.util.Scanner;

public class AttendanceNormalization {
    private static final String URL = "jdbc:mysql://localhost:3306/norsu_attendance?serverTimezone=UTC&useSSL=false";
    private static final String USER = "root";
    private static final String PASSWORD = "mike06";

    public static void main(String[] args) {
        try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD)) {
            createTables(conn);
            Scanner scanner = new Scanner(System.in);

            while (true) {
                System.out.println("\nEnter Student ID (or -1 to exit):");
                int studentId = scanner.nextInt();
                if (studentId == -1) break;
                scanner.nextLine(); // Consume newline

                System.out.println("Enter Student Name:");
                String studentName = scanner.nextLine();

                System.out.println("Enter Subjects (comma-separated, e.g., Hekasi, Math, English):");
                String subjectsInput = scanner.nextLine();
                String[] subjects = subjectsInput.split(",\\s*"); // Splitting subjects

                System.out.println("Enter Date (YYYY-MM-DD):");
                String date = scanner.nextLine();

                saveRawData(conn, studentId, studentName, subjects, date);
                normalizeData(conn);
            }

            displayData(conn);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static void createTables(Connection conn) throws SQLException {
        try (Statement stmt = conn.createStatement()) {
            // Create tables (same as before)
        }
    }

    private static void saveRawData(Connection conn, int studentId, String studentName, String[] subjects, String date) throws SQLException {
        for (String subject : subjects) {
            try (PreparedStatement ps = conn.prepareStatement("""
                INSERT INTO raw_attendance (student_id, student_name, subject, date) 
                VALUES (?, ?, ?, ?)
            """)) {
                ps.setInt(1, studentId);
                ps.setString(2, studentName);
                ps.setString(3, subject.trim()); // Save each subject separately
                ps.setString(4, date);
                ps.executeUpdate();
            }
        }
        System.out.println("✅ Raw data saved successfully.");
    }

    private static void normalizeData(Connection conn) throws SQLException {
        try (Statement stmt = conn.createStatement()) {
            // Insert students
            stmt.execute("""
                INSERT INTO students (student_id, student_name)
                SELECT DISTINCT student_id, student_name FROM raw_attendance
                ON DUPLICATE KEY UPDATE student_name = VALUES(student_name)
            """);

            // Insert subjects
            stmt.execute("""
                INSERT INTO subjects (subject_name)
                SELECT DISTINCT subject FROM raw_attendance
                ON DUPLICATE KEY UPDATE subject_name = VALUES(subject_name)
            """);

            // Insert into attendance table
            stmt.execute("""
                INSERT INTO attendance (student_id, subject_id, date)
                SELECT ra.student_id, s.subject_id, ra.date
                FROM raw_attendance ra
                JOIN subjects s ON ra.subject = s.subject_name
            """);

            System.out.println("✅ Data normalized successfully.");
        }
    }

    private static void displayData(Connection conn) throws SQLException {
        // Display tables (same as before)
    }
}
