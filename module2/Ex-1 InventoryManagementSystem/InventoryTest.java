public class InventoryTest {

    public static void main(String[] args) {

        Inventory inventory =
                new Inventory();

        inventory.addProduct(
            new Product(101,
            "Laptop",
            10,
            55000));

        inventory.addProduct(
            new Product(102,
            "Mouse",
            50,
            700));

        inventory.displayInventory();

        inventory.updateProduct(
                101,
                15,
                53000);

        inventory.deleteProduct(102);

        System.out.println("\nFinal Inventory:");

        inventory.displayInventory();
    }
}