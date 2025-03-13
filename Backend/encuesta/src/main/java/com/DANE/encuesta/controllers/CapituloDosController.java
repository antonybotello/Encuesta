package com.DANE.encuesta.controllers;

import com.DANE.encuesta.model.CapituloDos;
import com.DANE.encuesta.services.CapituloDosService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/capitulo-dos")
@CrossOrigin(origins = "http://localhost:4200")
public class CapituloDosController {

    @Autowired
    private CapituloDosService capituloDosService;

    @PostMapping("/guardar")
    public ResponseEntity<CapituloDos> guardarRespuestas(@RequestBody CapituloDos capituloDos) {
        CapituloDos guardado = capituloDosService.guardarRespuestas(capituloDos);
        return ResponseEntity.ok(guardado);
    }

    @GetMapping("/listar")
    public ResponseEntity<List<CapituloDos>> obtenerTodasLasRespuestas() {
        return ResponseEntity.ok(capituloDosService.obtenerTodasLasRespuestas());
    }

    @GetMapping("/{id}")
    public ResponseEntity<CapituloDos> obtenerRespuestasPorId(@PathVariable Long id) {
        Optional<CapituloDos> capituloDos = capituloDosService.obtenerRespuestasPorId(id);
        return capituloDos.map(ResponseEntity::ok)
                          .orElseGet(() -> ResponseEntity.notFound().build());
    }

    @DeleteMapping("/eliminar/{id}")
    public ResponseEntity<Void> eliminarRespuestas(@PathVariable Long id) {
        capituloDosService.eliminarRespuestas(id);
        return ResponseEntity.noContent().build();
    }
}
