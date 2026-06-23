public class TaskLinkedList {

    Task head;

    public void addTask(int id, String name, String status) {

        Task newTask = new Task(id, name, status);

        if (head == null) {
            head = newTask;
            return;
        }

        Task current = head;

        while (current.next != null) {
            current = current.next;
        }

        current.next = newTask;
    }

    public Task searchTask(int id) {

        Task current = head;

        while (current != null) {

            if (current.taskId == id) {
                return current;
            }

            current = current.next;
        }

        return null;
    }

    public void displayTasks() {

        if (head == null) {
            System.out.println("No Tasks Found");
            return;
        }

        Task current = head;

        while (current != null) {
            current.display();
            current = current.next;
        }
    }

    public void deleteTask(int id) {

        if (head == null) {
            return;
        }

        if (head.taskId == id) {
            head = head.next;
            return;
        }

        Task current = head;

        while (current.next != null &&
                current.next.taskId != id) {

            current = current.next;
        }

        if (current.next != null) {
            current.next = current.next.next;
        }
    }
}