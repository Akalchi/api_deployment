package dev.alejandra.api_deployment;

import io.github.cdimascio.dotenv.Dotenv;

public class EnvTest {
    public static void main(String[] args) {
        Dotenv dotenv = Dotenv.configure().load();
        System.out.println("DB_URL: " + dotenv.get("DB_URL"));
        System.out.println("DB_USERNAME: " + dotenv.get("DB_USERNAME"));
    }
}
