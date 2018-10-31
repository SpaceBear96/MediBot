package com.medibot.controller;

import com.medibot.modelos.Conectar;
import com.medibot.modelos.Usuarios;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.request;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

public class HomeController {
    
    private JdbcTemplate jdbcTemplate;
    private int cond;
    private String sql;
    @RequestMapping("home.htm")
    public ModelAndView home(@ModelAttribute("usuarios") Usuarios u,
            BindingResult result,
            SessionStatus status,
            HttpServletRequest request){
        ModelAndView mav= new ModelAndView();
        cond=1;
        if(request.getParameter("cond") == null){
        }else{
        cond=Integer.parseInt(request.getParameter("cond"));
        }
        
        switch(cond){
            case 1:
                sql="select * from usuarios";
                break;
            case 2:
                sql="select * from usuarios order by nombre asc";
                break;
            case 3:
                sql="select * from usuarios order by id asc";
                break;
            case 4:
                sql="select * from usuarios order by id desc";
                break;
        }

        List datos=this.jdbcTemplate.queryForList(sql);
        mav.addObject("datos",datos);
        mav.setViewName("home");
        return mav;
    }

    public HomeController() {
        Conectar con=new Conectar();
        this.jdbcTemplate=new JdbcTemplate(con.conectar());
    }
}
