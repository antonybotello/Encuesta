package com.DANE.encuesta.services;

import com.DANE.encuesta.model.Usuario;
import com.DANE.encuesta.repository.UsuarioRepository;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.Optional;

@Service
public class UsuarioService {
    
    @Autowired
    private UsuarioRepository usuarioRepository;

    // Método para registrar un usuario
    public Usuario registrarUsuario(Usuario usuario) {
        usuario.setPassword(usuario.getPassword());  // Se cifrará automáticamente
        return usuarioRepository.save(usuario);
    }

    // Método para autenticar usuario
    public Usuario autenticarUsuario(String username, String password) {
        Optional<Usuario> usuarioOpt = usuarioRepository.findByUsername(username);
        if (usuarioOpt.isPresent()) {
            Usuario usuario = usuarioOpt.get();
            String passwordMD5 = DigestUtils.md5Hex(password);  // Cifrar la ingresada
            if (usuario.getPassword().equals(passwordMD5)) {
                return usuario; // Credenciales correctas
            }
        }
        return null; // Usuario no encontrado o contraseña incorrecta
    }

    // Obtener usuario por username
    public Optional<Usuario> obtenerUsuarioPorUsername(String username) {
        return usuarioRepository.findByUsername(username);
    }
}
