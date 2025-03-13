package com.DANE.encuesta.model;

import jakarta.persistence.*;

@Entity
@Table(name = "capitulo_uno")
public class CapituloUno {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String paisResidencia;
    private String nacionalidad;
    private String sexo;
    private String acompananteSeleccionado;
    private String otroAcompanante;
    private Integer cantidadPersonas;

    public CapituloUno() {
    }

    public CapituloUno(String paisResidencia, String nacionalidad, String sexo, String acompananteSeleccionado, String otroAcompanante, Integer cantidadPersonas) {
        this.paisResidencia = paisResidencia;
        this.nacionalidad = nacionalidad;
        this.sexo = sexo;
        this.acompananteSeleccionado = acompananteSeleccionado;
        this.otroAcompanante = otroAcompanante;
        this.cantidadPersonas = cantidadPersonas;
    }

    // Getters y Setters
    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    public String getPaisResidencia() { return paisResidencia; }
    public void setPaisResidencia(String paisResidencia) { this.paisResidencia = paisResidencia; }

    public String getNacionalidad() { return nacionalidad; }
    public void setNacionalidad(String nacionalidad) { this.nacionalidad = nacionalidad; }

    public String getSexo() { return sexo; }
    public void setSexo(String sexo) { this.sexo = sexo; }

    public String getAcompananteSeleccionado() { return acompananteSeleccionado; }
    public void setAcompananteSeleccionado(String acompananteSeleccionado) { this.acompananteSeleccionado = acompananteSeleccionado; }

    public String getOtroAcompanante() { return otroAcompanante; }
    public void setOtroAcompanante(String otroAcompanante) { this.otroAcompanante = otroAcompanante; }

    public Integer getCantidadPersonas() { return cantidadPersonas; }
    public void setCantidadPersonas(Integer cantidadPersonas) { this.cantidadPersonas = cantidadPersonas; }
}
