package vamp.rpg.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import vamp.rpg.dao.SheetDAO;
import vamp.rpg.model.Sheet;

import javax.servlet.http.HttpSession;
import java.util.Map;

/**
 * Created by Daniel on 2015-10-24.
 */
@Controller
@RequestMapping(value={"/", "/login", "/vampire"})
public class LoginController {
    @Autowired
    private SheetDAO sheetDAO;

    @Autowired
    private Player1Controller player1Controller;

    @RequestMapping(method = RequestMethod.GET)
    public String load(Model model) {
        return "login";
    }

    @RequestMapping(value= "logIn", method=RequestMethod.POST)
    public String validateLogin(@RequestParam("login") String login,
                              @RequestParam("password") String password,
                              Model model, HttpSession session) {
        Map<String, String> logins = sheetDAO.getLogin();
        String pass = logins.get(login);
        String message = null;
        if (pass != null) {
            if (pass.equals(password)) {
                Sheet player = sheetDAO.getPlayerByLogin(login);
                session.setAttribute("login", login);
                message = null;
            } else {
                message = "Niepoprawne haslo!";
            }
        } else {
            message = "Uzytkownik " + login + " nie istnieje!";
        }
        model.addAttribute("errorMessage", message);
        return message!=null? "login": player1Controller.populate(model, session);
    }

    @RequestMapping(value= "logOut", method=RequestMethod.POST)
    public String logOut(Model model, HttpSession session) {
        session.setAttribute("login", null);
        return "login";
    }

}
