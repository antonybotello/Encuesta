package com.DANE.encuesta.controllers;

import com.DANE.encuesta.model.CapituloUno;
import com.DANE.encuesta.services.CapituloUnoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/capitulo-uno")
@CrossOrigin(origins = "http://localhost:4200")
public class CapituloUnoController {

    @Autowired
    private CapituloUnoService capituloUnoService;

    // 📌 Guardar respuestas del capítulo 1
    @PostMapping("/guardar")
    public ResponseEntity<CapituloUno> guardarRespuestas(@RequestBody CapituloUno capituloUno) {
        CapituloUno guardado = capituloUnoService.guardarRespuestas(capituloUno);
        return ResponseEntity.ok(guardado);
    }

    // 📌 Obtener todas las respuestas
    @GetMapping("/listar")
    public ResponseEntity<List<CapituloUno>> obtenerTodasLasRespuestas() {
        return ResponseEntity.ok(capituloUnoService.obtenerTodasLasRespuestas());
    }

    // 📌 Obtener respuestas por ID
    @GetMapping("/{id}")
    public ResponseEntity<CapituloUno> obtenerRespuestasPorId(@PathVariable Long id) {
        Optional<CapituloUno> capituloUno = capituloUnoService.obtenerRespuestasPorId(id);
        return capituloUno.map(ResponseEntity::ok)
                          .orElseGet(() -> ResponseEntity.notFound().build());
    }

    // 📌 Eliminar respuestas por ID
    @DeleteMapping("/eliminar/{id}")
    public ResponseEntity<Void> eliminarRespuestas(@PathVariable Long id) {
        capituloUnoService.eliminarRespuestas(id);
        return ResponseEntity.noContent().build();
    }
}
