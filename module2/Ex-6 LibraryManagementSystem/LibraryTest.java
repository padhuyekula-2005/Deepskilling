import java.util.Arrays;
import java.util.Comparator;

public class LibraryTest {

    public static void main(String[] args) {

        Book[] books = {
                new Book(101,
                        "Java Programming",
                        "James Gosling"),

                new Book(102,
                        "Data Structures",
                        "Mark Allen"),

                new Book(103,
                        "Operating Systems",
                        "Galvin"),

                new Book(104,
                        "Computer Networks",
                        "Andrew Tanenbaum")
        };

        System.out.println("LINEAR SEARCH");

        Book linear =
                LibrarySearch.linearSearch(
                        books,
                        "Operating Systems"
                );

        if (linear != null)
            linear.display();
        else
            System.out.println("Book not found");


        Arrays.sort(
                books,
                Comparator.comparing(
                        b -> b.title.toLowerCase()
                )
        );

        System.out.println("\nBINARY SEARCH");

        Book binary =
                LibrarySearch.binarySearch(
                        books,
                        "Operating Systems"
                );

        if (binary != null)
            binary.display();
        else
            System.out.println("Book not found");
    }
}