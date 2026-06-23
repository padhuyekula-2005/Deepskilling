public class SortingTest {

    public static void main(String[] args) {

        Order[] orders1 = {
                new Order(101, "Tejasri", 4500),
                new Order(102, "Rahul", 1200),
                new Order(103, "Priya", 8000),
                new Order(104, "Anil", 2500)
        };

        System.out.println("Before Bubble Sort:");

        Order.display(orders1);

        Order.bubbleSort(orders1);

        System.out.println("\nAfter Bubble Sort:");

        Order.display(orders1);


        Order[] orders2 = {
                new Order(101, "Tejasri", 4500),
                new Order(102, "Rahul", 1200),
                new Order(103, "Priya", 8000),
                new Order(104, "Anil", 2500)
        };

        Order.quickSort(orders2, 0, orders2.length - 1);

        System.out.println("\nAfter Quick Sort:");

        Order.display(orders2);

    }
}