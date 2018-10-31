package com.medibot.controller;

import com.medibot.modelos.Conectar;
import com.medibot.modelos.Enfermedades;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HoneController {
    private JdbcTemplate jdbcTemplate;
    private int cond;
    private String sql;
    
    @RequestMapping("hone.htm")
    public ModelAndView henfer(@ModelAttribute("enfermedades") Enfermedades e,
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
                sql="select * from enfermedades";
                break;
            case 2:
                sql="select * from enfermedades order by nombre asc";
                break;
            case 3:
                sql="select * from enfermedades order by id asc";
                break;
            case 4:
                sql="select * from enfermedades order by id desc";
                break;
        }

        List datos=this.jdbcTemplate.queryForList(sql);
        mav.addObject("datos",datos);
        mav.setViewName("hone");
        return mav;
    }

    public HoneController() {
        Conectar con=new Conectar();
        this.jdbcTemplate=new JdbcTemplate(con.conectar());
    }
}
