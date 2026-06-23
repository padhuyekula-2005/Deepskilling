public class ObserverPatternTest {

    public static void main(String[] args) {

        // Create stock market subject
        StockMarket stockMarket = new StockMarket();

        // Create observers
        Observer mobileUser = new MobileApp("Alice");
        Observer webUser = new WebApp("Bob");

        // Register observers
        stockMarket.registerObserver(mobileUser);
        stockMarket.registerObserver(webUser);

        // Update stock prices
        stockMarket.setStockPrice(5000.50);
        stockMarket.setStockPrice(5200.75);

        // Remove one observer
        stockMarket.deregisterObserver(webUser);

        // Update again
        stockMarket.setStockPrice(5400.00);
    }
}