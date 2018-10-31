package com.medibot.modelos;

import java.util.regex.Pattern;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;

public class EnfermedadesValidar {
     public boolean supports(Class<?> type){
        return Enfermedades.class.isAssignableFrom(type);
    }
    
    public void validate(Object o, Errors errors){
       
        Enfermedades enfermedades=(Enfermedades)o;
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "nombre",
                "required.nombre","El campo nombre es obligatorio");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "descripcion",
                "required.nombre","El campo correo es obligatorio");
    }
}
