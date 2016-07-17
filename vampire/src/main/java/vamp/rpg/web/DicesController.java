package vamp.rpg.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import vamp.rpg.dao.DiceDAO;
import vamp.rpg.dao.SheetDAO;
import vamp.rpg.model.Dice;
import vamp.rpg.model.Sheet;

import javax.servlet.http.HttpSession;
import java.util.Arrays;
import java.util.Date;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.concurrent.ThreadLocalRandom;

/**
 * Created by Daniel on 2015-10-24.
 */
@Controller
@RequestMapping(value={"/dices", "/vampire"})
public class DicesController {

    @Autowired
    private DiceDAO diceDAO;

    @Autowired
    private SheetDAO sheetDAO;

    @RequestMapping(method=RequestMethod.POST)
    public String updateDice(@RequestParam("number") Integer number,
                              Model model, HttpSession session) {
        String login = (String) session.getAttribute("login");
        String name = "Gosc";
        if (login != null){
            Sheet player = sheetDAO.getPlayerByLogin(login);
            name = player.getImie();
        }
        int[] diceArray = new int[number];
        for (int i = 0; i < number; i++) {
            diceArray[i] = ThreadLocalRandom.current().nextInt(1, 10 + 1);
        }
        String result = Arrays.toString(diceArray);
        Dice dice = new Dice(name, result, new Date());
        boolean success = diceDAO.updateDice(dice);
        if (success) {
            model.addAttribute("error", false);
        } else {
            model.addAttribute("error", true);
        }
        model.addAttribute("displayNumber", number);
        return updateData(model);
    }

    @RequestMapping(method = RequestMethod.GET)
    public String updateData(Model model) {
        List<Dice> dices = diceDAO.findAll();
        model.addAttribute("dices", dices);
        return "dices";
    }

}
