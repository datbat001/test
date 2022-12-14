package com.gydsoluciones.tux.codigoacademy;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;

public class MainActivity extends Activity {

    private ImageView imgvQuienesSomos;
    private ImageView imgvCursos;
    private ImageView imgvContacto;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        imgvQuienesSomos = (ImageView)findViewById(R.id.imgvQuienesSomos);
        imgvCursos = (ImageView)findViewById(R.id.imgvCursos);
        imgvContacto = (ImageView)findViewById(R.id.imgvContacto);

        imgvQuienesSomos.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(MainActivity.this,QuienesSomosActivity.class));
            }
        });

        imgvCursos.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(MainActivity.this,CursosActivity.class));
            }
        });

        imgvContacto.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(MainActivity.this,ContactoActivity.class));
            }
        });
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        MenuInflater inflater = getMenuInflater();
        inflater.inflate(R.menu.mnu_principal, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {

        switch (item.getItemId())
        {
            case R.id.mnuItemClientes:
                startActivity(new Intent(this, ClientesActivity.class));
        }
        return super.onOptionsItemSelected(item);
    }
}
