import com.sun.net.httpserver.HttpServer;
import java.io.OutputStream;
import java.net.InetSocketAddress;

public class Hello {
    public static void main(String[] args) throws Exception {
        // On crée un serveur sur le port 8080
        HttpServer server = HttpServer.create(new InetSocketAddress(8080), 0);
        server.createContext("/", (exchange) -> {
            String response = "<h1>Hello ! Ce message vient du conteneur Java</h1>";
            exchange.sendResponseHeaders(200, response.length());
            try (OutputStream os = exchange.getResponseBody()) {
                os.write(response.getBytes());
            }
        });
        System.out.println("Serveur démarré sur le port 8080...");
        server.start();
    }
}