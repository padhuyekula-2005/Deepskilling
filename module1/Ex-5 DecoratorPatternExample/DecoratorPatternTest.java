public class DecoratorPatternTest {

    public static void main(String[] args) {

        System.out.println("Email Notification:");
        Notifier email = new EmailNotifier();
        email.send("System update available");

        System.out.println("\nEmail + SMS Notification:");
        Notifier emailSMS =
                new SMSNotifierDecorator(
                        new EmailNotifier());
        emailSMS.send("System update available");

        System.out.println("\nEmail + SMS + Slack Notification:");
        Notifier multiChannel =
                new SlackNotifierDecorator(
                        new SMSNotifierDecorator(
                                new EmailNotifier()));

        multiChannel.send("System update available");
    }
}