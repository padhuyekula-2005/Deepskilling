public class Main {

    public static void main(String[] args) {

        // Create repository object
        CustomerRepository repository = new CustomerRepositoryImpl();

        // Inject dependency through constructor
        CustomerService service = new CustomerService(repository);

        // Use service
        service.displayCustomer(101);
    }
}