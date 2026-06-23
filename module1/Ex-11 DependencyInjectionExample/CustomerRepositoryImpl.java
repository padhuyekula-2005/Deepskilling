public class CustomerRepositoryImpl implements CustomerRepository {

    @Override
    public String findCustomerById(int customerId) {
        // Simulated database lookup
        return "Customer ID: " + customerId + ", Name: John Doe";
    }
}