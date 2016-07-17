package vamp.rpg.model;

import javax.persistence.*;

/**
 * Created by Daniel on 2015-10-10.
 */
@Entity
@Table(name = "SHEETS")
public class Sheet {
    @Id
    @GeneratedValue
    private long id;

    @Column(name="login")
    private String login;

    @Column(name="pass")
    private String pass;

    @Column(name="imie")
    private String imie;

    @Column(name="gracz")
    private String gracz;

    @Column(name="natura")
    private String natura;

    @Column(name="postawa")
    private String postawa;

    @Column(name="klan")
    private String klan;

    @Column(name="pokolenie")
    private String pokolenie;

    @Column(name="schronienie")
    private String schronienie;

    @Column(name="rola")
    private String rola;

    @Column(name="sila")
    private Integer sila;

    @Column(name="charyzma")
    private Integer charyzma;

    @Column(name="percepcja")
    private Integer percepcja;

    @Column(name="zrecznosc")
    private Integer zrecznosc;

    @Column(name="oddzialywanie")
    private Integer oddzialywanie;

    @Column(name="inteligencja")
    private Integer inteligencja;

    @Column(name="wytrzymalosc")
    private Integer wytrzymalosc;

    @Column(name="wyglad")
    private Integer wyglad;

    @Column(name="spryt")
    private Integer spryt;

    @Column(name="aktorstwo")
    private Integer aktorstwo;

    @Column(name="etykieta")
    private Integer etykieta;

    @Column(name="lingwistyka")
    private Integer lingwistyka;

    @Column(name="autorytet")
    private Integer autorytet;

    @Column(name="jezdziectwo")
    private Integer jezdziectwo;

    @Column(name="medycyna")
    private Integer medycyna;

    @Column(name="bojka")
    private Integer bojka;

    @Column(name="krycie")
    private Integer krycie;

    @Column(name="nauka")
    private Integer nauka;

    @Column(name="czujnosc")
    private Integer czujnosc;

    @Column(name="lucznictwo")
    private Integer lucznictwo;

    @Column(name="okultyzm")
    private Integer okultyzm;

    @Column(name="empatia")
    private Integer empatia;

    @Column(name="muzyka")
    private Integer muzyka;

    @Column(name="polityka")
    private Integer polityka;

    @Column(name="przebieglosc")
    private Integer przebieglosc;

    @Column(name="oswajanie")
    private Integer oswajanie;

    @Column(name="prawo")
    private Integer prawo;

    @Column(name="uniki")
    private Integer uniki;

    @Column(name="rzemioslo")
    private Integer rzemioslo;

    @Column(name="sledztwo")
    private Integer sledztwo;

    @Column(name="wysportowanie")
    private Integer wysportowanie;

    @Column(name="sztuka")
    private Integer sztuka;

    @Column(name="wiejska")
    private Integer wiejska;

    @Column(name="zastraszanie")
    private Integer zastraszanie;

    @Column(name="walka")
    private Integer walka;

    @Column(name="wyksztalcenie")
    private Integer wyksztalcenie;

    @Column(name="zlodziejstwo")
    private Integer zlodziejstwo;

    @Column(name="zielarstwo")
    private Integer zielarstwo;

    @Column(name="zarzadzanie")
    private Integer zarzadzanie;

    @Column(name="dyscypliny1")
    private Integer dyscypliny1;

    @Column(name="dyscypliny2")
    private Integer dyscypliny2;

    @Column(name="dyscypliny3")
    private Integer dyscypliny3;

    @Column(name="dyscypliny4")
    private Integer dyscypliny4;

    @Column(name="dyscypliny5")
    private Integer dyscypliny5;

    @Column(name="pozycja1")
    private Integer pozycja1;

    @Column(name="pozycja2")
    private Integer pozycja2;

    @Column(name="pozycja3")
    private Integer pozycja3;

    @Column(name="pozycja4")
    private Integer pozycja4;

    @Column(name="pozycja5")
    private Integer pozycja5;

    @Column(name="sumienie")
    private Integer sumienie;

    @Column(name="samokontrola")
    private Integer samokontrola;

    @Column(name="odwaga")
    private Integer odwaga;

    @Column(name="inne1")
    private Integer inne1;

    @Column(name="inne2")
    private Integer inne2;

    @Column(name="inne3")
    private Integer inne3;

    @Column(name="inne4")
    private Integer inne4;

    @Column(name="inne5")
    private Integer inne5;

    @Column(name="droga")
    private Integer droga;

    @Column(name="stan")
    private Integer stan;

    @Column(name="bron1_id")
    private Integer bron1_id;

    @Column(name="bron2_id")
    private Integer bron2_id;

    @Column(name="bron3_id")
    private Integer bron3_id;

    @Column(name="bron4_id")
    private Integer bron4_id;

    @Column(name="wola")
    private Integer wola;

    @Column(name="wola_max")
    private Integer wola_max;

    @Column(name="krew")
    private Integer krew;

    @Column(name="krew_max")
    private Integer krew_max;

    @Column(name="doswiadczenie")
    private Integer doswiadczenie;

    @Column(name="dyscypliny1_opis")
    private String dyscypliny1_opis;

    @Column(name="dyscypliny2_opis")
    private String dyscypliny2_opis;

    @Column(name="dyscypliny3_opis")
    private String dyscypliny3_opis;

    @Column(name="dyscypliny4_opis")
    private String dyscypliny4_opis;

    @Column(name="dyscypliny5_opis")
    private String dyscypliny5_opis;

    @Column(name="pozycja1_opis")
    private String pozycja1_opis;

    @Column(name="pozycja2_opis")
    private String pozycja2_opis;

    @Column(name="pozycja3_opis")
    private String pozycja3_opis;

    @Column(name="pozycja4_opis")
    private String pozycja4_opis;

    @Column(name="pozycja5_opis")
    private String pozycja5_opis;

    @Column(name="inne1_opis")
    private String inne1_opis;

    @Column(name="inne2_opis")
    private String inne2_opis;

    @Column(name="inne3_opis")
    private String inne3_opis;

    @Column(name="inne4_opis")
    private String inne4_opis;

    @Column(name="inne5_opis")
    private String inne5_opis;

    @Column(name="osad")
    private boolean osad;

    @Column(name="instynkt")
    private boolean instynkt;

    @Column(name="przedmioty")
    private String przedmioty;

    @Column(name="droga_nazwa")
    private String droga_nazwa;

    @Column(name="ulomnosc")
    private String ulomnosc;

    public Sheet() {
    }

    public Sheet(String login, String pass, String imie, String gracz, String natura, String postawa, String klan, String pokolenie, String schronienie, String rola, Integer sila, Integer charyzma, Integer percepcja, Integer zrecznosc, Integer oddzialywanie, Integer inteligencja, Integer wytrzymalosc, Integer wyglad, Integer spryt, Integer aktorstwo, Integer etykieta, Integer lingwistyka, Integer autorytet, Integer jezdziectwo, Integer medycyna, Integer bojka, Integer krycie, Integer nauka, Integer czujnosc, Integer lucznictwo, Integer okultyzm, Integer empatia, Integer muzyka, Integer polityka, Integer przebieglosc, Integer oswajanie, Integer prawo, Integer uniki, Integer rzemioslo, Integer sledztwo, Integer wysportowanie, Integer sztuka, Integer wiejska, Integer zastraszanie, Integer walka, Integer wyksztalcenie, Integer zlodziejstwo, Integer zielarstwo, Integer zarzadzanie, Integer dyscypliny1, Integer dyscypliny2, Integer dyscypliny3, Integer dyscypliny4, Integer dyscypliny5, Integer pozycja1, Integer pozycja2, Integer pozycja3, Integer pozycja4, Integer pozycja5, Integer sumienie, Integer samokontrola, Integer odwaga, Integer inne1, Integer inne2, Integer inne3, Integer inne4, Integer inne5, Integer droga, Integer stan, Integer bron1_id, Integer bron2_id, Integer bron3_id, Integer bron4_id, Integer wola, Integer wola_max, Integer krew, Integer krew_max, Integer doswiadczenie, String dyscypliny1_opis, String dyscypliny2_opis, String dyscypliny3_opis, String dyscypliny4_opis, String dyscypliny5_opis, String pozycja1_opis, String pozycja2_opis, String pozycja3_opis, String pozycja4_opis, String pozycja5_opis, String inne1_opis, String inne2_opis, String inne3_opis, String inne4_opis, String inne5_opis, boolean osad, boolean instynkt, String przedmioty, String droga_nazwa, String ulomnosc) {
        this.login = login;
        this.pass = pass;
        this.imie = imie;
        this.gracz = gracz;
        this.natura = natura;
        this.postawa = postawa;
        this.klan = klan;
        this.pokolenie = pokolenie;
        this.schronienie = schronienie;
        this.rola = rola;
        this.sila = sila;
        this.charyzma = charyzma;
        this.percepcja = percepcja;
        this.zrecznosc = zrecznosc;
        this.oddzialywanie = oddzialywanie;
        this.inteligencja = inteligencja;
        this.wytrzymalosc = wytrzymalosc;
        this.wyglad = wyglad;
        this.spryt = spryt;
        this.aktorstwo = aktorstwo;
        this.etykieta = etykieta;
        this.lingwistyka = lingwistyka;
        this.autorytet = autorytet;
        this.jezdziectwo = jezdziectwo;
        this.medycyna = medycyna;
        this.bojka = bojka;
        this.krycie = krycie;
        this.nauka = nauka;
        this.czujnosc = czujnosc;
        this.lucznictwo = lucznictwo;
        this.okultyzm = okultyzm;
        this.empatia = empatia;
        this.muzyka = muzyka;
        this.polityka = polityka;
        this.przebieglosc = przebieglosc;
        this.oswajanie = oswajanie;
        this.prawo = prawo;
        this.uniki = uniki;
        this.rzemioslo = rzemioslo;
        this.sledztwo = sledztwo;
        this.wysportowanie = wysportowanie;
        this.sztuka = sztuka;
        this.wiejska = wiejska;
        this.zastraszanie = zastraszanie;
        this.walka = walka;
        this.wyksztalcenie = wyksztalcenie;
        this.zlodziejstwo = zlodziejstwo;
        this.zielarstwo = zielarstwo;
        this.zarzadzanie = zarzadzanie;
        this.dyscypliny1 = dyscypliny1;
        this.dyscypliny2 = dyscypliny2;
        this.dyscypliny3 = dyscypliny3;
        this.dyscypliny4 = dyscypliny4;
        this.dyscypliny5 = dyscypliny5;
        this.pozycja1 = pozycja1;
        this.pozycja2 = pozycja2;
        this.pozycja3 = pozycja3;
        this.pozycja4 = pozycja4;
        this.pozycja5 = pozycja5;
        this.sumienie = sumienie;
        this.samokontrola = samokontrola;
        this.odwaga = odwaga;
        this.inne1 = inne1;
        this.inne2 = inne2;
        this.inne3 = inne3;
        this.inne4 = inne4;
        this.inne5 = inne5;
        this.droga = droga;
        this.stan = stan;
        this.bron1_id = bron1_id;
        this.bron2_id = bron2_id;
        this.bron3_id = bron3_id;
        this.bron4_id = bron4_id;
        this.wola = wola;
        this.wola_max = wola_max;
        this.krew = krew;
        this.krew_max = krew_max;
        this.doswiadczenie = doswiadczenie;
        this.dyscypliny1_opis = dyscypliny1_opis;
        this.dyscypliny2_opis = dyscypliny2_opis;
        this.dyscypliny3_opis = dyscypliny3_opis;
        this.dyscypliny4_opis = dyscypliny4_opis;
        this.dyscypliny5_opis = dyscypliny5_opis;
        this.pozycja1_opis = pozycja1_opis;
        this.pozycja2_opis = pozycja2_opis;
        this.pozycja3_opis = pozycja3_opis;
        this.pozycja4_opis = pozycja4_opis;
        this.pozycja5_opis = pozycja5_opis;
        this.inne1_opis = inne1_opis;
        this.inne2_opis = inne2_opis;
        this.inne3_opis = inne3_opis;
        this.inne4_opis = inne4_opis;
        this.inne5_opis = inne5_opis;
        this.osad = osad;
        this.instynkt = instynkt;
        this.przedmioty = przedmioty;
        this.droga_nazwa = droga_nazwa;
        this.ulomnosc = ulomnosc;
    }

    public String getDroga_nazwa() {
        return droga_nazwa;
    }

    public void setDroga_nazwa(String droga_nazwa) {
        this.droga_nazwa = droga_nazwa;
    }

    public String getUlomnosc() {
        return ulomnosc;
    }

    public void setUlomnosc(String ulomnosc) {
        this.ulomnosc = ulomnosc;
    }

    public boolean isOsad() {
        return osad;
    }

    public void setOsad(boolean osad) {
        this.osad = osad;
    }

    public boolean isInstynkt() {
        return instynkt;
    }

    public void setInstynkt(boolean instynkt) {
        this.instynkt = instynkt;
    }

    public String getPrzedmioty() {
        return przedmioty;
    }

    public void setPrzedmioty(String przedmioty) {
        this.przedmioty = przedmioty;
    }

    public String getGracz() {
        return gracz;
    }

    public void setGracz(String gracz) {
        this.gracz = gracz;
    }

    public String getNatura() {
        return natura;
    }

    public void setNatura(String natura) {
        this.natura = natura;
    }

    public String getPostawa() {
        return postawa;
    }

    public void setPostawa(String postawa) {
        this.postawa = postawa;
    }

    public String getKlan() {
        return klan;
    }

    public void setKlan(String klan) {
        this.klan = klan;
    }

    public String getPokolenie() {
        return pokolenie;
    }

    public void setPokolenie(String pokolenie) {
        this.pokolenie = pokolenie;
    }

    public String getSchronienie() {
        return schronienie;
    }

    public void setSchronienie(String schronienie) {
        this.schronienie = schronienie;
    }

    public String getRola() {
        return rola;
    }

    public void setRola(String rola) {
        this.rola = rola;
    }

    public Integer getWola_max() {
        return wola_max;
    }

    public void setWola_max(Integer wola_max) {
        this.wola_max = wola_max;
    }

    public Integer getKrew_max() {
        return krew_max;
    }

    public void setKrew_max(Integer krew_max) {
        this.krew_max = krew_max;
    }

    public String getDyscypliny1_opis() {
        return dyscypliny1_opis;
    }

    public void setDyscypliny1_opis(String dyscypliny1_opis) {
        this.dyscypliny1_opis = dyscypliny1_opis;
    }

    public String getDyscypliny2_opis() {
        return dyscypliny2_opis;
    }

    public void setDyscypliny2_opis(String dyscypliny2_opis) {
        this.dyscypliny2_opis = dyscypliny2_opis;
    }

    public String getDyscypliny3_opis() {
        return dyscypliny3_opis;
    }

    public void setDyscypliny3_opis(String dyscypliny3_opis) {
        this.dyscypliny3_opis = dyscypliny3_opis;
    }

    public String getDyscypliny4_opis() {
        return dyscypliny4_opis;
    }

    public void setDyscypliny4_opis(String dyscypliny4_opis) {
        this.dyscypliny4_opis = dyscypliny4_opis;
    }

    public String getDyscypliny5_opis() {
        return dyscypliny5_opis;
    }

    public void setDyscypliny5_opis(String dyscypliny5_opis) {
        this.dyscypliny5_opis = dyscypliny5_opis;
    }

    public String getPozycja1_opis() {
        return pozycja1_opis;
    }

    public void setPozycja1_opis(String pozycja1_opis) {
        this.pozycja1_opis = pozycja1_opis;
    }

    public String getPozycja2_opis() {
        return pozycja2_opis;
    }

    public void setPozycja2_opis(String pozycja2_opis) {
        this.pozycja2_opis = pozycja2_opis;
    }

    public String getPozycja3_opis() {
        return pozycja3_opis;
    }

    public void setPozycja3_opis(String pozycja3_opis) {
        this.pozycja3_opis = pozycja3_opis;
    }

    public String getPozycja4_opis() {
        return pozycja4_opis;
    }

    public void setPozycja4_opis(String pozycja4_opis) {
        this.pozycja4_opis = pozycja4_opis;
    }

    public String getPozycja5_opis() {
        return pozycja5_opis;
    }

    public void setPozycja5_opis(String pozycja5_opis) {
        this.pozycja5_opis = pozycja5_opis;
    }

    public String getInne1_opis() {
        return inne1_opis;
    }

    public void setInne1_opis(String inne1_opis) {
        this.inne1_opis = inne1_opis;
    }

    public String getInne2_opis() {
        return inne2_opis;
    }

    public void setInne2_opis(String inne2_opis) {
        this.inne2_opis = inne2_opis;
    }

    public String getInne3_opis() {
        return inne3_opis;
    }

    public void setInne3_opis(String inne3_opis) {
        this.inne3_opis = inne3_opis;
    }

    public String getInne4_opis() {
        return inne4_opis;
    }

    public void setInne4_opis(String inne4_opis) {
        this.inne4_opis = inne4_opis;
    }

    public String getInne5_opis() {
        return inne5_opis;
    }

    public void setInne5_opis(String inne5_opis) {
        this.inne5_opis = inne5_opis;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getImie() {
        return imie;
    }

    public void setImie(String imie) {
        this.imie = imie;
    }

    public Integer getSila() {
        return sila;
    }

    public void setSila(Integer sila) {
        this.sila = sila;
    }

    public Integer getCharyzma() {
        return charyzma;
    }

    public void setCharyzma(Integer charyzma) {
        this.charyzma = charyzma;
    }

    public Integer getPercepcja() {
        return percepcja;
    }

    public void setPercepcja(Integer percepcja) {
        this.percepcja = percepcja;
    }

    public Integer getZrecznosc() {
        return zrecznosc;
    }

    public void setZrecznosc(Integer zrecznosc) {
        this.zrecznosc = zrecznosc;
    }

    public Integer getOddzialywanie() {
        return oddzialywanie;
    }

    public void setOddzialywanie(Integer oddzialywanie) {
        this.oddzialywanie = oddzialywanie;
    }

    public Integer getInteligencja() {
        return inteligencja;
    }

    public void setInteligencja(Integer inteligencja) {
        this.inteligencja = inteligencja;
    }

    public Integer getWytrzymalosc() {
        return wytrzymalosc;
    }

    public void setWytrzymalosc(Integer wytrzymalosc) {
        this.wytrzymalosc = wytrzymalosc;
    }

    public Integer getWyglad() {
        return wyglad;
    }

    public void setWyglad(Integer wyglad) {
        this.wyglad = wyglad;
    }

    public Integer getSpryt() {
        return spryt;
    }

    public void setSpryt(Integer spryt) {
        this.spryt = spryt;
    }

    public Integer getAktorstwo() {
        return aktorstwo;
    }

    public void setAktorstwo(Integer aktorstwo) {
        this.aktorstwo = aktorstwo;
    }

    public Integer getEtykieta() {
        return etykieta;
    }

    public void setEtykieta(Integer etykieta) {
        this.etykieta = etykieta;
    }

    public Integer getLingwistyka() {
        return lingwistyka;
    }

    public void setLingwistyka(Integer lingwistyka) {
        this.lingwistyka = lingwistyka;
    }

    public Integer getAutorytet() {
        return autorytet;
    }

    public void setAutorytet(Integer autorytet) {
        this.autorytet = autorytet;
    }

    public Integer getJezdziectwo() {
        return jezdziectwo;
    }

    public void setJezdziectwo(Integer jezdziectwo) {
        this.jezdziectwo = jezdziectwo;
    }

    public Integer getMedycyna() {
        return medycyna;
    }

    public void setMedycyna(Integer medycyna) {
        this.medycyna = medycyna;
    }

    public Integer getBojka() {
        return bojka;
    }

    public void setBojka(Integer bojka) {
        this.bojka = bojka;
    }

    public Integer getKrycie() {
        return krycie;
    }

    public void setKrycie(Integer krycie) {
        this.krycie = krycie;
    }

    public Integer getNauka() {
        return nauka;
    }

    public void setNauka(Integer nauka) {
        this.nauka = nauka;
    }

    public Integer getCzujnosc() {
        return czujnosc;
    }

    public void setCzujnosc(Integer czujnosc) {
        this.czujnosc = czujnosc;
    }

    public Integer getLucznictwo() {
        return lucznictwo;
    }

    public void setLucznictwo(Integer lucznictwo) {
        this.lucznictwo = lucznictwo;
    }

    public Integer getOkultyzm() {
        return okultyzm;
    }

    public void setOkultyzm(Integer okultyzm) {
        this.okultyzm = okultyzm;
    }

    public Integer getEmpatia() {
        return empatia;
    }

    public void setEmpatia(Integer empatia) {
        this.empatia = empatia;
    }

    public Integer getMuzyka() {
        return muzyka;
    }

    public void setMuzyka(Integer muzyka) {
        this.muzyka = muzyka;
    }

    public Integer getPolityka() {
        return polityka;
    }

    public void setPolityka(Integer polityka) {
        this.polityka = polityka;
    }

    public Integer getPrzebieglosc() {
        return przebieglosc;
    }

    public void setPrzebieglosc(Integer przebieglosc) {
        this.przebieglosc = przebieglosc;
    }

    public Integer getOswajanie() {
        return oswajanie;
    }

    public void setOswajanie(Integer oswajanie) {
        this.oswajanie = oswajanie;
    }

    public Integer getPrawo() {
        return prawo;
    }

    public void setPrawo(Integer prawo) {
        this.prawo = prawo;
    }

    public Integer getUniki() {
        return uniki;
    }

    public void setUniki(Integer uniki) {
        this.uniki = uniki;
    }

    public Integer getRzemioslo() {
        return rzemioslo;
    }

    public void setRzemioslo(Integer rzemioslo) {
        this.rzemioslo = rzemioslo;
    }

    public Integer getSledztwo() {
        return sledztwo;
    }

    public void setSledztwo(Integer sledztwo) {
        this.sledztwo = sledztwo;
    }

    public Integer getWysportowanie() {
        return wysportowanie;
    }

    public void setWysportowanie(Integer wysportowanie) {
        this.wysportowanie = wysportowanie;
    }

    public Integer getSztuka() {
        return sztuka;
    }

    public void setSztuka(Integer sztuka) {
        this.sztuka = sztuka;
    }

    public Integer getWiejska() {
        return wiejska;
    }

    public void setWiejska(Integer wiejska) {
        this.wiejska = wiejska;
    }

    public Integer getZastraszanie() {
        return zastraszanie;
    }

    public void setZastraszanie(Integer zastraszanie) {
        this.zastraszanie = zastraszanie;
    }

    public Integer getWalka() {
        return walka;
    }

    public void setWalka(Integer walka) {
        this.walka = walka;
    }

    public Integer getWyksztalcenie() {
        return wyksztalcenie;
    }

    public void setWyksztalcenie(Integer wyksztalcenie) {
        this.wyksztalcenie = wyksztalcenie;
    }

    public Integer getZlodziejstwo() {
        return zlodziejstwo;
    }

    public void setZlodziejstwo(Integer zlodziejstwo) {
        this.zlodziejstwo = zlodziejstwo;
    }

    public Integer getZielarstwo() {
        return zielarstwo;
    }

    public void setZielarstwo(Integer zielarstwo) {
        this.zielarstwo = zielarstwo;
    }

    public Integer getZarzadzanie() {
        return zarzadzanie;
    }

    public void setZarzadzanie(Integer zarzadzanie) {
        this.zarzadzanie = zarzadzanie;
    }

    public Integer getDyscypliny1() {
        return dyscypliny1;
    }

    public void setDyscypliny1(Integer dyscypliny1) {
        this.dyscypliny1 = dyscypliny1;
    }

    public Integer getDyscypliny2() {
        return dyscypliny2;
    }

    public void setDyscypliny2(Integer dyscypliny2) {
        this.dyscypliny2 = dyscypliny2;
    }

    public Integer getDyscypliny3() {
        return dyscypliny3;
    }

    public void setDyscypliny3(Integer dyscypliny3) {
        this.dyscypliny3 = dyscypliny3;
    }

    public Integer getDyscypliny4() {
        return dyscypliny4;
    }

    public void setDyscypliny4(Integer dyscypliny4) {
        this.dyscypliny4 = dyscypliny4;
    }

    public Integer getDyscypliny5() {
        return dyscypliny5;
    }

    public void setDyscypliny5(Integer dyscypliny5) {
        this.dyscypliny5 = dyscypliny5;
    }

    public Integer getPozycja1() {
        return pozycja1;
    }

    public void setPozycja1(Integer pozycja1) {
        this.pozycja1 = pozycja1;
    }

    public Integer getPozycja2() {
        return pozycja2;
    }

    public void setPozycja2(Integer pozycja2) {
        this.pozycja2 = pozycja2;
    }

    public Integer getPozycja3() {
        return pozycja3;
    }

    public void setPozycja3(Integer pozycja3) {
        this.pozycja3 = pozycja3;
    }

    public Integer getPozycja4() {
        return pozycja4;
    }

    public void setPozycja4(Integer pozycja4) {
        this.pozycja4 = pozycja4;
    }

    public Integer getPozycja5() {
        return pozycja5;
    }

    public void setPozycja5(Integer pozycja5) {
        this.pozycja5 = pozycja5;
    }

    public Integer getSumienie() {
        return sumienie;
    }

    public void setSumienie(Integer sumienie) {
        this.sumienie = sumienie;
    }

    public Integer getSamokontrola() {
        return samokontrola;
    }

    public void setSamokontrola(Integer samokontrola) {
        this.samokontrola = samokontrola;
    }

    public Integer getOdwaga() {
        return odwaga;
    }

    public void setOdwaga(Integer odwaga) {
        this.odwaga = odwaga;
    }

    public Integer getInne1() {
        return inne1;
    }

    public void setInne1(Integer inne1) {
        this.inne1 = inne1;
    }

    public Integer getInne2() {
        return inne2;
    }

    public void setInne2(Integer inne2) {
        this.inne2 = inne2;
    }

    public Integer getInne3() {
        return inne3;
    }

    public void setInne3(Integer inne3) {
        this.inne3 = inne3;
    }

    public Integer getInne4() {
        return inne4;
    }

    public void setInne4(Integer inne4) {
        this.inne4 = inne4;
    }

    public Integer getInne5() {
        return inne5;
    }

    public void setInne5(Integer inne5) {
        this.inne5 = inne5;
    }

    public Integer getDroga() {
        return droga;
    }

    public void setDroga(Integer droga) {
        this.droga = droga;
    }

    public Integer getStan() {
        return stan;
    }

    public void setStan(Integer stan) {
        this.stan = stan;
    }

    public Integer getBron1_id() {
        return bron1_id;
    }

    public void setBron1_id(Integer bron1_id) {
        this.bron1_id = bron1_id;
    }

    public Integer getBron2_id() {
        return bron2_id;
    }

    public void setBron2_id(Integer bron2_id) {
        this.bron2_id = bron2_id;
    }

    public Integer getBron3_id() {
        return bron3_id;
    }

    public void setBron3_id(Integer bron3_id) {
        this.bron3_id = bron3_id;
    }

    public Integer getBron4_id() {
        return bron4_id;
    }

    public void setBron4_id(Integer bron4_id) {
        this.bron4_id = bron4_id;
    }

    public Integer getWola() {
        return wola;
    }

    public void setWola(Integer wola) {
        this.wola = wola;
    }

    public Integer getWolaMax() {
        return wola_max;
    }

    public void setWolaMax(Integer wola_max) {
        this.wola_max = wola_max;
    }

    public Integer getKrew() {
        return krew;
    }

    public void setKrew(Integer krew) {
        this.krew = krew;
    }

    public Integer getKrewMax() {
        return krew_max;
    }

    public void setKrewMax(Integer krew_max) {
        this.krew_max = krew_max;
    }

    public Integer getDoswiadczenie() {
        return doswiadczenie;
    }

    public void setDoswiadczenie(Integer doswiadczenie) {
        this.doswiadczenie = doswiadczenie;
    }
}

