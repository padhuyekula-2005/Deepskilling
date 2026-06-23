public class FactoryMethodTest {

    public static void main(String[] args) {

        DocumentFactory word = new WordFactory();
        word.displayDocument();

        DocumentFactory pdf = new PdfFactory();
        pdf.displayDocument();

        DocumentFactory excel = new ExcelFactory();
        excel.displayDocument();
    }
}