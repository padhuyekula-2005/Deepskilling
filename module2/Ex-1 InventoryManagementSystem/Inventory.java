import java.util.HashMap;

public class Inventory {

    private HashMap<Integer, Product> products =
            new HashMap<>();

    // Add Product
    public void addProduct(Product product) {
        products.put(product.getProductId(), product);
        System.out.println("Product Added");
    }

    // Update Product
    public void updateProduct(int id,
                              int quantity,
                              double price) {

        if (products.containsKey(id)) {
            Product p = products.get(id);
            p.setQuantity(quantity);
            p.setPrice(price);

            System.out.println("Product Updated");
        } else {
            System.out.println("Product Not Found");
        }
    }

    // Delete Product
    public void deleteProduct(int id) {

        if (products.remove(id) != null)
            System.out.println("Product Deleted");
        else
            System.out.println("Product Not Found");
    }

    // Display Products
    public void displayInventory() {

        for (Product p : products.values()) {
            System.out.println(p);
        }
    }
}