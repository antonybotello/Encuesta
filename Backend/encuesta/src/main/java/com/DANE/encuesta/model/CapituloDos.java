package com.DANE.encuesta.model;

import jakarta.persistence.*;

@Entity
@Table(name = "capitulo_dos")
public class CapituloDos {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String motivoSeleccionado;
    private String otroMotivo;
    private String organizacionSeleccionada;
    private String otroOrganizacion;
    private String serviciosSeleccionados;
    private String otroTransporte;
    private String otroServicio;

    public CapituloDos() {
    }

    public CapituloDos(String motivoSeleccionado, String otroMotivo, String organizacionSeleccionada,
                       String otroOrganizacion, String serviciosSeleccionados, String otroTransporte, String otroServicio) {
        this.motivoSeleccionado = motivoSeleccionado;
        this.otroMotivo = otroMotivo;
        this.organizacionSeleccionada = organizacionSeleccionada;
        this.otroOrganizacion = otroOrganizacion;
        this.serviciosSeleccionados = serviciosSeleccionados;
        this.otroTransporte = otroTransporte;
        this.otroServicio = otroServicio;
    }

    // Getters y Setters
    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    public String getMotivoSeleccionado() { return motivoSeleccionado; }
    public void setMotivoSeleccionado(String motivoSeleccionado) { this.motivoSeleccionado = motivoSeleccionado; }

    public String getOtroMotivo() { return otroMotivo; }
    public void setOtroMotivo(String otroMotivo) { this.otroMotivo = otroMotivo; }

    public String getOrganizacionSeleccionada() { return organizacionSeleccionada; }
    public void setOrganizacionSeleccionada(String organizacionSeleccionada) { this.organizacionSeleccionada = organizacionSeleccionada; }

    public String getOtroOrganizacion() { return otroOrganizacion; }
    public void setOtroOrganizacion(String otroOrganizacion) { this.otroOrganizacion = otroOrganizacion; }

    public String getServiciosSeleccionados() { return serviciosSeleccionados; }
    public void setServiciosSeleccionados(String serviciosSeleccionados) { this.serviciosSeleccionados = serviciosSeleccionados; }

    public String getOtroTransporte() { return otroTransporte; }
    public void setOtroTransporte(String otroTransporte) { this.otroTransporte = otroTransporte; }

    public String getOtroServicio() { return otroServicio; }
    public void setOtroServicio(String otroServicio) { this.otroServicio = otroServicio; }
}
