package com.DANE.encuesta.services;

import com.DANE.encuesta.model.CapituloDos;
import com.DANE.encuesta.repository.CapituloDosRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CapituloDosService {

    @Autowired
    private CapituloDosRepository capituloDosRepository;

    public CapituloDos guardarRespuestas(CapituloDos capituloDos) {
        return capituloDosRepository.save(capituloDos);
    }

    public List<CapituloDos> obtenerTodasLasRespuestas() {
        return capituloDosRepository.findAll();
    }

    public Optional<CapituloDos> obtenerRespuestasPorId(Long id) {
        return capituloDosRepository.findById(id);
    }

    public void eliminarRespuestas(Long id) {
        capituloDosRepository.deleteById(id);
    }
}
