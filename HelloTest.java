import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertEquals;

public class HelloTest {

    @Test
    void testLogic() {
        // Une simulation de test : on vérifie que 1+1 font 2
        // Dans la vraie vie, on testerait une méthode de ta classe Hello
        assertEquals(2, 1 + 1, "Le calcul de base doit être correct");
    }
}