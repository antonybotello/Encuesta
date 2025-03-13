package com.DANE.encuesta.services;

import com.DANE.encuesta.model.CapituloTres;
import com.DANE.encuesta.repository.CapituloTresRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CapituloTresService {

    @Autowired
    private CapituloTresRepository capituloTresRepository;

    public CapituloTres guardarRespuestas(CapituloTres capituloTres) {
        return capituloTresRepository.save(capituloTres);
    }

    public List<CapituloTres> obtenerTodasLasRespuestas() {
        return capituloTresRepository.findAll();
    }

    public Optional<CapituloTres> obtenerRespuestasPorId(Long id) {
        return capituloTresRepository.findById(id);
    }

    public void eliminarRespuestas(Long id) {
        capituloTresRepository.deleteById(id);
    }
}
