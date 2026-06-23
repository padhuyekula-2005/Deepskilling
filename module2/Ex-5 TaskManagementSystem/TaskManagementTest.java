public class TaskManagementTest {

    public static void main(String[] args) {

        TaskLinkedList list = new TaskLinkedList();

        list.addTask(101, "Design UI", "Pending");
        list.addTask(102, "Develop Backend", "In Progress");
        list.addTask(103, "Testing", "Completed");

        System.out.println("ALL TASKS");

        list.displayTasks();

        System.out.println("\nSearch Task 102");

        Task found = list.searchTask(102);

        if (found != null) {
            found.display();
        } else {
            System.out.println("Task Not Found");
        }

        System.out.println("\nDelete Task 102");

        list.deleteTask(102);

        System.out.println("\nUpdated Tasks");

        list.displayTasks();
    }
}