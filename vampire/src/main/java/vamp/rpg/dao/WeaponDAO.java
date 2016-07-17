package vamp.rpg.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import vamp.rpg.model.Weapon;

import java.util.List;

/**
 * Created by Daniel on 2015-10-14.
 */
@Repository
@SuppressWarnings({"unchecked", "rawtypes"})
public class WeaponDAO {
    @Autowired
    private SessionFactory sessionFactory;

    /**
     * @Transactional annotation below will trigger Spring Hibernate transaction manager to automatically create
     * a hibernate session. See src/main/webapp/WEB-INF/servlet-context.xml
     */
    @Transactional
    public List<Weapon> findAll() {
        Session session = sessionFactory.getCurrentSession();
        List weapons = session.createQuery("from Weapon").list();
        return weapons;
    }

    @Transactional
    public Weapon getWeaponById(String id) {
        Session session = sessionFactory.getCurrentSession();
        if (!id.equals("")){
            Weapon weapon = (Weapon) session.createQuery("from Weapon where id="+id).list().get(0);
            return weapon;
        } else {
            return null;
        }
    }
}
