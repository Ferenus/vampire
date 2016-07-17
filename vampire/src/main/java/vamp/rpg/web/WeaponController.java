package vamp.rpg.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import vamp.rpg.dao.WeaponDAO;
import vamp.rpg.model.Weapon;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/**
 * Created by Daniel on 2015-10-14.
 */
@Controller
@RequestMapping("/weapons")
public class WeaponController {
    @Autowired
    private WeaponDAO weaponDAO;

    /**
     * This handler method is invoked when
     * http://localhost:8080/pizzashop is requested.
     * The method returns view name "index"
     * which will be resolved into /WEB-INF/weapons.jsp.
     *  See src/main/webapp/WEB-INF/servlet-context.xml
     */
    @RequestMapping(method = RequestMethod.GET)
    public String list(Model model) {
        List<Weapon> weapons = weaponDAO.findAll();
        Comparator<Weapon> comparator = new Comparator<Weapon>() {
            public int compare(Weapon c1, Weapon c2) {
                return (int)(c1.getId() - c2.getId());
            }
        };
        Collections.sort(weapons, comparator);
        model.addAttribute("weapons", weapons);
        return "weapons";
    }
}
