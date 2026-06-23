public class MVCPatternDemo {

    public static void main(String[] args) {

        // Create Model
        Student student = new Student("Rahul", 101, "A");

        // Create View
        StudentView view = new StudentView();

        // Create Controller
        StudentController controller = new StudentController(student, view);

        // Display initial data
        System.out.println("Initial Student Data:");
        controller.updateView();

        // Update student details
        controller.setStudentName("Aarav");
        controller.setStudentGrade("A+");

        // Display updated data
        System.out.println("\nUpdated Student Data:");
        controller.updateView();
    }
}