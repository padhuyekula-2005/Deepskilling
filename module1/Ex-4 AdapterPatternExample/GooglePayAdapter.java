public class GooglePayAdapter implements PaymentProcessor {

    private GooglePayGateway googlePayGateway;

    public GooglePayAdapter(GooglePayGateway googlePayGateway) {
        this.googlePayGateway = googlePayGateway;
    }

    public void processPayment(double amount) {
        googlePayGateway.pay(amount);
    }
}