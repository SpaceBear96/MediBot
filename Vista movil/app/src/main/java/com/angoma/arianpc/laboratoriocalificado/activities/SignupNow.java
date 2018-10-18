package com.angoma.arianpc.laboratoriocalificado.activities;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

import com.angoma.arianpc.laboratoriocalificado.R;

public class SignupNow extends AppCompatActivity {

    EditText registerUsuario, registerContraseña, registerConfirmarContraseña;
    Button registerButton;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_signup_now);

        Button btn = (Button) findViewById(R.id.button_login);
        btn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent (v.getContext(), MainActivity.class);
                startActivityForResult(intent, 0);
            }
        });

        registerUsuario = (EditText) findViewById(R.id.register_usuario);
        registerContraseña = (EditText) findViewById(R.id.register_contraseña);
        registerConfirmarContraseña = (EditText) findViewById(R.id.register_confirmarContraseña);

        registerButton = (Button) findViewById(R.id.register_button);

        registerButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String s1 = registerUsuario.getText().toString();
                String s2 = registerContraseña.getText().toString();
                String s3 = registerConfirmarContraseña.getText().toString();
            }
        });
    }
}
