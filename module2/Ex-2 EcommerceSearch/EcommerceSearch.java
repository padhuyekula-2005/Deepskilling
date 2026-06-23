public class EcommerceSearch {

    // Linear Search
    public static Product linearSearch(Product[] products, int targetId) {

        for (Product product : products) {
            if (product.productId == targetId) {
                return product;
            }
        }

        return null;
    }

    // Binary Search
    public static Product binarySearch(Product[] products, int targetId) {

        int left = 0;
        int right = products.length - 1;

        while (left <= right) {

            int mid = left + (right - left) / 2;

            if (products[mid].productId == targetId) {
                return products[mid];
            }

            if (products[mid].productId < targetId) {
                left = mid + 1;
            } else {
                right = mid - 1;
            }
        }

        return null;
    }

    public static void main(String[] args) {

        Product[] products = {
            new Product(105, "Laptop", "Electronics"),
            new Product(101, "Shoes", "Fashion"),
            new Product(103, "Phone", "Electronics"),
            new Product(104, "Watch", "Accessories"),
            new Product(102, "Bag", "Fashion")
        };

        System.out.println("LINEAR SEARCH");

        Product result1 = linearSearch(products, 104);

        if (result1 != null)
            System.out.println(result1);
        else
            System.out.println("Product not found");



        Product[] sortedProducts = {
            new Product(101, "Shoes", "Fashion"),
            new Product(102, "Bag", "Fashion"),
            new Product(103, "Phone", "Electronics"),
            new Product(104, "Watch", "Accessories"),
            new Product(105, "Laptop", "Electronics")
        };

        System.out.println("\nBINARY SEARCH");

        Product result2 = binarySearch(sortedProducts, 104);

        if (result2 != null)
            System.out.println(result2);
        else
            System.out.println("Product not found");
    }
}