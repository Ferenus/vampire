package vamp.rpg.model;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by Daniel on 2015-10-14.
 */
@Entity
@Table(name = "DICE")
public class Dice {

    @Id
    @Column(name="imie")
    private String imie;

    @Column(name="wynik")
    private String wynik;

    @Column(name="SYS_UPDATE_DATE")
    private Date sysUpdateDate;

    public Dice() {
    }

    public Dice(String imie, String wynik, Date sysUpdateDate) {
        this.imie = imie;
        this.wynik = wynik;
        this.sysUpdateDate = sysUpdateDate;
    }

    public String getImie() {
        return imie;
    }

    public void setImie(String imie) {
        this.imie = imie;
    }

    public String getWynik() {
        return wynik;
    }

    public void setWynik(String wynik) {
        this.wynik = wynik;
    }

    public Date getSysUpdateDate() {
        return sysUpdateDate;
    }

    public void setSysUpdateDate(Date sysUpdateDate) {
        this.sysUpdateDate = sysUpdateDate;
    }
}
