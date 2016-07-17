package vamp.rpg.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import vamp.rpg.model.Dice;
import vamp.rpg.model.Sheet;
import vamp.rpg.model.Weapon;

import java.util.Date;
import java.util.List;

/**
 * Created by Daniel on 2015-10-14.
 */
@Repository
@SuppressWarnings({"unchecked", "rawtypes"})
public class DiceDAO {
    @Autowired
    private SessionFactory sessionFactory;

    /**
     * @Transactional annotation below will trigger Spring Hibernate transaction manager to automatically create
     * a hibernate session. See src/main/webapp/WEB-INF/servlet-context.xml
     */
    @Transactional
    public List<Dice> findAll() {
        Session session = sessionFactory.getCurrentSession();
        List dices = session.createQuery("from Dice order by sysUpdateDate desc").list();
        return dices;
    }

    @Transactional
    public Dice getDicesByName(String name) {
        Session session = sessionFactory.getCurrentSession();
        if (!name.equals("")) {
            Dice dice = (Dice) session.createQuery("from Dice where imie=" + name).list().get(0);
            return dice;
        } else {
            return null;
        }
    }

    @Transactional
    public boolean updateDice(Dice dice) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Dice where imie = :name");
        Dice p = (Dice) query.setString("name", dice.getImie()).uniqueResult();
        if (p!=null) {
            long time = (new Date()).getTime() - p.getSysUpdateDate().getTime();
            if (time > 10000 || time < 0) {
                p.setWynik(dice.getWynik());
                p.setSysUpdateDate(new Date());
                return true;
            }
            return false;
        } else {
            session.save(dice);
            return true;
        }
    }
}
