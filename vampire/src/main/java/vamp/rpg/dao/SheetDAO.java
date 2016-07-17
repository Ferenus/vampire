package vamp.rpg.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import vamp.rpg.model.Sheet;

import java.beans.BeanInfo;
import java.beans.IntrospectionException;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.*;


/**
 * Created by Daniel on 2015-10-14.
 */
@Repository
@SuppressWarnings({"unchecked", "rawtypes"})
public class SheetDAO {
    @Autowired
    private SessionFactory sessionFactory;

    /**
     * @Transactional annotation below will trigger Spring Hibernate transaction manager to automatically create
     * a hibernate session. See src/main/webapp/WEB-INF/servlet-context.xml
     */
    @Transactional
    public List<Sheet> findAll() {
        Session session = sessionFactory.getCurrentSession();
        List sheets = session.createQuery("from Sheet").list();
        return sheets;
    }

    @Transactional
    public Sheet getPlayerByName(String name) {
        Session session = sessionFactory.getCurrentSession();
        List sheets = session.createQuery("from Sheet where imie='" + name +"'").list();
        Sheet sheet = (Sheet)sheets.get(0);
        return sheet;
    }

    @Transactional
    public Sheet getPlayerByLogin(String login) {
        Session session = sessionFactory.getCurrentSession();
        List sheets = session.createQuery("from Sheet where login='" + login +"'").list();
        Sheet sheet = (Sheet)sheets.get(0);
        return sheet;
    }

    @Transactional
    public Map<String, String> getLogin() {
        Session session = sessionFactory.getCurrentSession();
        List<Sheet> sheets = session.createQuery("from Sheet").list();
        Map<String,String> logins = new HashMap();
        for (Sheet sheet: sheets) {
            logins.put(sheet.getLogin(), sheet.getPass());
        }
        return logins;
    }

    @Transactional
    public List<String> getNames() {
        Session session = sessionFactory.getCurrentSession();
        List<Sheet> sheets = session.createQuery("from Sheet").list();
        List<String> names = new ArrayList();
        for (Sheet sheet: sheets) {
            names.add(sheet.getImie());
        }
        java.util.Collections.sort(names);
        return names;
    }

    @Transactional
    public void updateSheet(String name, String parameter, Integer value) {
        Session session = sessionFactory.getCurrentSession();
        String methodName = "set"+parameter.substring(0, 1).toUpperCase() + parameter.substring(1);
        Query query = session.createQuery("from Sheet where imie = :name");
        Sheet p = (Sheet) query.setString("name", name).uniqueResult();
        try {
            Method method = p.getClass().getMethod(methodName, Integer.class);
            method.invoke(p, value);
        } catch (IllegalAccessException e) {
        } catch (IllegalArgumentException e) {
        } catch (InvocationTargetException e) {
        } catch (NoSuchMethodException e) {
        }
    }

    @Transactional
    public void increaseSheet(String name, String parameter, Integer value) {
        Session session = sessionFactory.getCurrentSession();
        String setMethodName = "set"+parameter.substring(0, 1).toUpperCase() + parameter.substring(1);
        String getMethodName = "get"+parameter.substring(0, 1).toUpperCase() + parameter.substring(1);
        Query query = session.createQuery("from Sheet where imie = :name");
        Sheet p = (Sheet) query.setString("name", name).uniqueResult();
        try {
            Method getMethod = p.getClass().getMethod(getMethodName);
            Integer val = (Integer)getMethod.invoke(p);
            value = val + value;
            Method setMethod = p.getClass().getMethod(setMethodName, Integer.class);
            setMethod.invoke(p, value);
        } catch (IllegalAccessException e) {
        } catch (IllegalArgumentException e) {
        } catch (InvocationTargetException e) {
        } catch (NoSuchMethodException e) {
        }
    }

    public LinkedHashSet<String> getParameters() {
        LinkedHashSet<String> parameters = new LinkedHashSet();
        BeanInfo beanInfo = null;
        try {
            beanInfo = Introspector.getBeanInfo(Sheet.class);
            for (PropertyDescriptor propertyDesc : beanInfo.getPropertyDescriptors()) {
                if(propertyDesc.getPropertyType().getName().equals("java.lang.Integer") && !propertyDesc.getName().equals("id")) {
                    String propertyName = propertyDesc.getName();
                    parameters.add(propertyName);
                }
            }
        } catch (IntrospectionException e) {
            e.printStackTrace();
        }
        return parameters;
    }

    public LinkedHashSet<String> getVariables(){
        LinkedHashSet<String> variables = new LinkedHashSet();
        variables.add("droga");
        variables.add("krew");
        variables.add("wola");
        variables.add("stan");
        return variables;
    }
}
