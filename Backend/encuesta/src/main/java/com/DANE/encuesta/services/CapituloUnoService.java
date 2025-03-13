package com.DANE.encuesta.services;

import com.DANE.encuesta.model.CapituloUno;
import com.DANE.encuesta.repository.CapituloUnoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CapituloUnoService {

    @Autowired
    private CapituloUnoRepository capituloUnoRepository;

    public CapituloUno guardarRespuestas(CapituloUno capituloUno) {
        return capituloUnoRepository.save(capituloUno);
    }

    public List<CapituloUno> obtenerTodasLasRespuestas() {
        return capituloUnoRepository.findAll();
    }

    public Optional<CapituloUno> obtenerRespuestasPorId(Long id) {
        return capituloUnoRepository.findById(id);
    }

    public void eliminarRespuestas(Long id) {
        capituloUnoRepository.deleteById(id);
    }
}
