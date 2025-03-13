package com.DANE.encuesta.model;

import jakarta.persistence.*;
import java.util.List;

@Entity
@Table(name = "capitulo_tres")
public class CapituloTres {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ElementCollection
    private List<String> tiposGasto;

    @ElementCollection
    private List<Double> pagadoPorUsted;

    @ElementCollection
    private List<String> monedaUsted;

    @ElementCollection
    private List<Double> pagadoNoGrupo;

    @ElementCollection
    private List<String> monedaNoGrupo;

    @ElementCollection
    private List<Double> pagadoGrupo;

    @ElementCollection
    private List<String> monedaGrupo;

    @ElementCollection
    private List<Integer> cantidadPersonas;

    @ElementCollection
    private List<String> nombresPaises;

    @ElementCollection
    private List<Integer> nochesHotel;

    @ElementCollection
    private List<Integer> nochesFamiliar;

    @ElementCollection
    private List<String> otroAlojamiento;

    public CapituloTres() {
    }

    // Getters y Setters
    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    public List<String> getTiposGasto() { return tiposGasto; }
    public void setTiposGasto(List<String> tiposGasto) { this.tiposGasto = tiposGasto; }

    public List<Double> getPagadoPorUsted() { return pagadoPorUsted; }
    public void setPagadoPorUsted(List<Double> pagadoPorUsted) { this.pagadoPorUsted = pagadoPorUsted; }

    public List<String> getMonedaUsted() { return monedaUsted; }
    public void setMonedaUsted(List<String> monedaUsted) { this.monedaUsted = monedaUsted; }

    public List<Double> getPagadoNoGrupo() { return pagadoNoGrupo; }
    public void setPagadoNoGrupo(List<Double> pagadoNoGrupo) { this.pagadoNoGrupo = pagadoNoGrupo; }

    public List<String> getMonedaNoGrupo() { return monedaNoGrupo; }
    public void setMonedaNoGrupo(List<String> monedaNoGrupo) { this.monedaNoGrupo = monedaNoGrupo; }

    public List<Double> getPagadoGrupo() { return pagadoGrupo; }
    public void setPagadoGrupo(List<Double> pagadoGrupo) { this.pagadoGrupo = pagadoGrupo; }

    public List<String> getMonedaGrupo() { return monedaGrupo; }
    public void setMonedaGrupo(List<String> monedaGrupo) { this.monedaGrupo = monedaGrupo; }

    public List<Integer> getCantidadPersonas() { return cantidadPersonas; }
    public void setCantidadPersonas(List<Integer> cantidadPersonas) { this.cantidadPersonas = cantidadPersonas; }

    public List<String> getNombresPaises() { return nombresPaises; }
    public void setNombresPaises(List<String> nombresPaises) { this.nombresPaises = nombresPaises; }

    public List<Integer> getNochesHotel() { return nochesHotel; }
    public void setNochesHotel(List<Integer> nochesHotel) { this.nochesHotel = nochesHotel; }

    public List<Integer> getNochesFamiliar() { return nochesFamiliar; }
    public void setNochesFamiliar(List<Integer> nochesFamiliar) { this.nochesFamiliar = nochesFamiliar; }

    public List<String> getOtroAlojamiento() { return otroAlojamiento; }
    public void setOtroAlojamiento(List<String> otroAlojamiento) { this.otroAlojamiento = otroAlojamiento; }
}
