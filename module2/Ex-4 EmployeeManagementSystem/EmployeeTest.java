public class EmployeeTest {

    public static void main(String[] args) {

        EmployeeManagement system =
                new EmployeeManagement(5);

        system.addEmployee(
                new Employee(
                        101,
                        "Tejasri",
                        "Developer",
                        50000
                )
        );

        system.addEmployee(
                new Employee(
                        102,
                        "Ravi",
                        "Manager",
                        70000
                )
        );

        system.addEmployee(
                new Employee(
                        103,
                        "Anu",
                        "Tester",
                        45000
                )
        );

        system.displayEmployees();

        System.out.println("\nSearching Employee");

        Employee emp =
                system.searchEmployee(102);

        if (emp != null)
            emp.display();

        System.out.println(
                "\nDeleting Employee 102"
        );

        system.deleteEmployee(102);

        system.displayEmployees();
    }
}