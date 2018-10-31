
package com.medibot.modelos;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class UsuariosValidar implements Validator{
    
    private String email_pattern="\\b[A-Z0-9._%-]+@[A-Z0-9.-]+\\.[A-Z]{2,4}\\b";
    private Pattern pattern;
    private Matcher matcher;
    public boolean supports(Class<?> type){
        return Usuarios.class.isAssignableFrom(type);
    }
    
    public void validate(Object o, Errors errors){
       
        Usuarios usuarios=(Usuarios)o;
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "nombre",
                "required.nombre","El campo nombre es obligatorio");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "correo",
                "required.nombre","El campo correo es obligatorio");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "telefono",
                "required.nombre","El campo telefono es obligatorio");
        if(!(usuarios.getCorreo() != null && usuarios.getCorreo().isEmpty()))
        {
            this.pattern = Pattern.compile(email_pattern);
        }
    }
    
}
