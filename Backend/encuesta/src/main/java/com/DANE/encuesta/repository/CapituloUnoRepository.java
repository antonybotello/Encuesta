package com.DANE.encuesta.repository;

import com.DANE.encuesta.model.CapituloUno;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CapituloUnoRepository extends JpaRepository<CapituloUno, Long> {
}
