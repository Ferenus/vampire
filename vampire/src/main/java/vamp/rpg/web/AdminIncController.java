package vamp.rpg.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import vamp.rpg.dao.SheetDAO;

import java.util.LinkedHashSet;
import java.util.List;

/**
 * Created by Daniel on 2015-10-24.
 */
@Controller
@RequestMapping(value={"/incOne", "/vampire/incOne"})
public class AdminIncController {

    @Autowired
    private SheetDAO sheetDAO;

    @RequestMapping(method=RequestMethod.POST)
    public String incOne(@RequestParam("name") String name,
                              @RequestParam("parameter") String parameter,
                              @RequestParam("action") String action,
                              Model model) {
        Integer value = 0;
        if (action.equals("Zwieksz o 1")){
            value = 1;
        } else {
            value = -1;
        }
        sheetDAO.increaseSheet(name, parameter, value);
        model.addAttribute("success", true);
        model.addAttribute("displayName", name);
        model.addAttribute("displayVariable", parameter);
        return updateData(model);
    }

    @RequestMapping(method = RequestMethod.GET)
    public String updateData(Model model) {
        LinkedHashSet<String> sheet = sheetDAO.getParameters();
        LinkedHashSet<String> variables = sheetDAO.getVariables();
        List<String> names = sheetDAO.getNames();
        model.addAttribute("sheet", sheet);
        model.addAttribute("variables", variables);
        model.addAttribute("names", names);
        return "admin";
    }

}
