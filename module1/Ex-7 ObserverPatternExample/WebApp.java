public class WebApp implements Observer {

    private String browserUser;

    public WebApp(String browserUser) {
        this.browserUser = browserUser;
    }

    @Override
    public void update(double stockPrice) {
        System.out.println(
            "Web App [" + browserUser +
            "] received stock update: ₹" + stockPrice
        );
    }
}