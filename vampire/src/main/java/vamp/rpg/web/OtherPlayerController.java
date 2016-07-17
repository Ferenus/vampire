package vamp.rpg.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import vamp.rpg.dao.SheetDAO;
import vamp.rpg.dao.WeaponDAO;
import vamp.rpg.model.Sheet;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by Daniel on 2015-10-24.
 */
@Controller
@RequestMapping(value={"/otherPlayer", "/vampire"})
public class OtherPlayerController {

    @Autowired
    private SheetDAO sheetDAO;

    @Autowired
    private WeaponDAO weaponDAO;

    @RequestMapping(method = RequestMethod.POST)
    public String display(@RequestParam("name") String name, Model model) {
        Sheet sheet = sheetDAO.getPlayerByName(name);
        model.addAttribute("sheet", sheet);
        model.addAttribute("weapon1", weaponDAO.getWeaponById(sheet.getBron1_id()==null? "":sheet.getBron1_id().toString()));
        model.addAttribute("weapon2", weaponDAO.getWeaponById(sheet.getBron2_id()==null? "":sheet.getBron2_id().toString()));
        model.addAttribute("weapon3", weaponDAO.getWeaponById(sheet.getBron3_id()==null? "":sheet.getBron3_id().toString()));
        model.addAttribute("weapon4", weaponDAO.getWeaponById(sheet.getBron4_id() == null ? "" : sheet.getBron4_id().toString()));
        return "player1";
    }

    @RequestMapping(method = RequestMethod.GET)
    public String populate(Model model) {
        List<String> names = sheetDAO.getNames();
        model.addAttribute("names", names);
        return "otherPlayer";
    }
}
