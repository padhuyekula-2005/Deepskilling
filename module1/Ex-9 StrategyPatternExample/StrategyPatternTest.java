public class StrategyPatternTest {

    public static void main(String[] args) {

        PaymentContext context = new PaymentContext();

        // Use Credit Card
        context.setPaymentStrategy(new CreditCardPayment());
        context.executePayment(5000);

        // Switch to PayPal
        context.setPaymentStrategy(new PayPalPayment());
        context.executePayment(2500);
    }
}