package com.qdwssly1.food.config;

import io.swagger.v3.oas.models.ExternalDocumentation;
import io.swagger.v3.oas.models.OpenAPI;
import io.swagger.v3.oas.models.info.Info;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class SwaggerConfig {
    @Bean
    public OpenAPI openAPI() {
        return new OpenAPI()
                .info(new Info()
                        .title("Food Delivery API")
                        .version("v1")
                        .description("Learning edition API"))
                .externalDocs(new ExternalDocumentation()
                        .description("Docs")
                        .url("/swagger-ui.html"));
    }
}
