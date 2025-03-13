package com.DANE.encuesta.controllers;

import com.DANE.encuesta.model.CapituloTres;
import com.DANE.encuesta.services.CapituloTresService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/capitulo-tres")
@CrossOrigin(origins = "http://localhost:4200")
public class CapituloTresController {

    @Autowired
    private CapituloTresService capituloTresService;

    @PostMapping("/guardar")
    public ResponseEntity<CapituloTres> guardarRespuestas(@RequestBody CapituloTres capituloTres) {
        CapituloTres guardado = capituloTresService.guardarRespuestas(capituloTres);
        return ResponseEntity.ok(guardado);
    }

    @GetMapping("/listar")
    public ResponseEntity<List<CapituloTres>> obtenerTodasLasRespuestas() {
        return ResponseEntity.ok(capituloTresService.obtenerTodasLasRespuestas());
    }

    @GetMapping("/{id}")
    public ResponseEntity<CapituloTres> obtenerRespuestasPorId(@PathVariable Long id) {
        Optional<CapituloTres> capituloTres = capituloTresService.obtenerRespuestasPorId(id);
        return capituloTres.map(ResponseEntity::ok)
                           .orElseGet(() -> ResponseEntity.notFound().build());
    }

    @DeleteMapping("/eliminar/{id}")
    public ResponseEntity<Void> eliminarRespuestas(@PathVariable Long id) {
        capituloTresService.eliminarRespuestas(id);
        return ResponseEntity.noContent().build();
    }
}
