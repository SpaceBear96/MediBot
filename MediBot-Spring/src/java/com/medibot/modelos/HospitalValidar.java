package com.medibot.modelos;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;

public class HospitalValidar {
public boolean supports(Class<?> type){
        return Hospitales.class.isAssignableFrom(type);
    }
    
    public void validate(Object h, Errors errors){
       
        Hospitales hospitales=(Hospitales)h;
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "nombre",
                "required.nombre","El campo nombre es obligatorio");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "direccion",
                "required.nombre","El campo correo es obligatorio");
    }
}
