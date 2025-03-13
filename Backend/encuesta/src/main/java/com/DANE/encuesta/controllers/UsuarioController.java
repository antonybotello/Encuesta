package com.DANE.encuesta.controllers;

import com.DANE.encuesta.model.Usuario;
import com.DANE.encuesta.services.UsuarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping("/api/usuarios")
@CrossOrigin(origins = "http://localhost:4200")
public class UsuarioController {

    @Autowired
    private UsuarioService usuarioService;

    @PostMapping("/registrar")
    public ResponseEntity<?> registrarUsuario(@RequestBody Usuario usuario) {
        Optional<Usuario> usuarioExistente = usuarioService.obtenerUsuarioPorUsername(usuario.getUsername());

        if (usuarioExistente.isPresent()) {
            return ResponseEntity.badRequest().body("El usuario ya existe.");
        }

        Usuario nuevoUsuario = usuarioService.registrarUsuario(usuario);
        return ResponseEntity.ok(nuevoUsuario);
    }

    @GetMapping("/buscar/{username}")
    public ResponseEntity<Usuario> buscarUsuario(@PathVariable String username) {
        Optional<Usuario> usuario = usuarioService.obtenerUsuarioPorUsername(username);
        return usuario.map(ResponseEntity::ok)
                      .orElseGet(() -> ResponseEntity.notFound().build());
    }

    @PostMapping("/login")
    public ResponseEntity<?> iniciarSesion(@RequestBody Usuario usuario) {
        Optional<Usuario> usuarioOpt = usuarioService.obtenerUsuarioPorUsername(usuario.getUsername());

        if (usuarioOpt.isEmpty()) {
            return ResponseEntity.status(404).body("Usuario no encontrado");
        }

        Usuario usuarioAutenticado = usuarioService.autenticarUsuario(usuario.getUsername(), usuario.getPassword());

        if (usuarioAutenticado != null) {
            return ResponseEntity.ok(usuarioAutenticado);
        } else {
            return ResponseEntity.status(401).body("Contraseña incorrecta");
        }
    }
}
