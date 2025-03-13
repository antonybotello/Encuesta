package com.DANE.encuesta.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
public class SecurityConfig {

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http
            .csrf(csrf -> csrf.disable()) // Desactivar CSRF
            .authorizeHttpRequests(auth -> auth
                .requestMatchers("/api/usuarios/**").permitAll() // Permitir acceso a la API de usuarios
                .requestMatchers("/api/capitulo-uno/**").permitAll() // Permitir acceso al capítulo 1
                .requestMatchers("/api/capitulo-dos/**").permitAll() // Permitir acceso al capítulo 2
                .requestMatchers("/api/capitulo-tres/**").permitAll() // Permitir acceso al capítulo 3


                .anyRequest().authenticated()
            );
        return http.build();
    }
}
