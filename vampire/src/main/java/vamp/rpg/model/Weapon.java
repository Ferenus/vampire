package vamp.rpg.model;

import javax.persistence.*;

/**
 * Created by Daniel on 2015-10-14.
 */
@Entity
@Table(name = "WEAPON")
public class Weapon {
    @Id
    @GeneratedValue
    @Column
    private long id;

    @Column(name="bron")
    private String bron;

    @Column(name="stopien")
    private Integer stopien;

    @Column(name="obrazenia")
    private String obrazenia;

    @Column(name="ukrycie")
    private String ukrycie;

    @Column(name="zasieg")
    private String zasieg;

    @Column(name="szybkostrzelnosc")
    private String szybkostrzelnosc;

    @Column(name="sila")
    private Integer sila;

    public Weapon() {
    }

    public Weapon(String bron, Integer stopien, String obrazenia, String ukrycie, String zasieg, String szybkostrzelnosc, Integer sila) {
        this.bron = bron;
        this.stopien = stopien;
        this.obrazenia = obrazenia;
        this.ukrycie = ukrycie;
        this.zasieg = zasieg;
        this.szybkostrzelnosc = szybkostrzelnosc;
        this.sila = sila;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getBron() {
        return bron;
    }

    public void setBron(String bron) {
        this.bron = bron;
    }

    public Integer getStopien() {
        return stopien;
    }

    public void setStopien(Integer stopien) {
        this.stopien = stopien;
    }

    public String getObrazenia() {
        return obrazenia;
    }

    public void setObrazenia(String obrazenia) {
        this.obrazenia = obrazenia;
    }

    public String getUkrycie() {
        return ukrycie;
    }

    public void setUkrycie(String ukrycie) {
        this.ukrycie = ukrycie;
    }

    public String getZasieg() {
        return zasieg;
    }

    public void setZasieg(String zasieg) {
        this.zasieg = zasieg;
    }

    public String getSzybkostrzelnosc() {
        return szybkostrzelnosc;
    }

    public void setSzybkostrzelnosc(String szybkostrzelnosc) {
        this.szybkostrzelnosc = szybkostrzelnosc;
    }

    public Integer getSila() {
        return sila;
    }

    public void setSila(Integer sila) {
        this.sila = sila;
    }
}
