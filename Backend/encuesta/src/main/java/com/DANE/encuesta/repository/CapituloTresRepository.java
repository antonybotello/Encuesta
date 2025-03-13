package com.DANE.encuesta.repository;

import com.DANE.encuesta.model.CapituloTres;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CapituloTresRepository extends JpaRepository<CapituloTres, Long> {
}
