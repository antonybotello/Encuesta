package com.DANE.encuesta.repository;

import com.DANE.encuesta.model.CapituloDos;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CapituloDosRepository extends JpaRepository<CapituloDos, Long> {
}
