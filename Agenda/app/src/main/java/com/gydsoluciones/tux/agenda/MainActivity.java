package com.gydsoluciones.tux.agenda;

import android.os.Environment;
import android.support.annotation.StringDef;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;

public class MainActivity extends AppCompatActivity {
    private EditText etTexto, etArchivo;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        etTexto = (EditText)findViewById(R.id.etTexto);
        etArchivo = (EditText)findViewById(R.id.etArchivo);
    }

    private void LimpiarTextos()
    {
        etArchivo.setText("");
        etTexto.setText("");
    }
     private boolean existeFile(String[] archivos,String archivo)
     {
         for(int f=0;f<archivos.length;f++)
             if(archivo.equals(archivos[f]))
                 return true;
             return false;
     }

     public void Limpiar(View view){
         this.LimpiarTextos();
     }

     public void Buscar(View view){
         //String[] archivos = fileList();
         String archivo = etArchivo.getText().toString();
         archivo = archivo.replace('/','-') + ".txt";

         //Código para recuperar el archivo de la MicroSD
         try{
             File tarjeta = Environment.getExternalStorageDirectory();
             File file = new File(tarjeta.getAbsolutePath(),archivo);
             if(file.exists()){
                 FileInputStream fin = new FileInputStream(file);
                 InputStreamReader isr = new InputStreamReader(fin);
                 BufferedReader br = new BufferedReader(isr);
                 String linea = br.readLine();
                 String texto = "";
                 while (linea != null){
                     texto = texto + linea + "\n";
                     linea = br.readLine();
                 }
                 br.close();
                 isr.close();
                 etTexto.setText(texto);
             }else{
                 Toast.makeText(this,"El archivo no existe",Toast.LENGTH_SHORT).show();
             }

         }catch(IOException e){
             Log.i("Agenda",e.toString());
         }

         //Código para recuperar el archivo de la memoria interna
         /*if(existeFile(archivos,archivo)){

             try{
                 InputStreamReader file = new InputStreamReader(openFileInput(archivo));
                 BufferedReader br = new BufferedReader(file);
                 String linea = br.readLine();
                 String texto = "";
                 while(linea != null)
                 {
                     texto += linea + "\n";
                     linea = br.readLine();
                 }
                 br.close();
                 file.close();
                 etTexto.setText(texto);
             }
             catch (IOException e)
             {
                 Log.i("Agenda",e.toString());
             }
         }
         else
         {
             Toast.makeText(this,"El archivo no existe",Toast.LENGTH_SHORT).show();
         }*/
     }

     public void Grabar(View view){
         String archivo = etArchivo.getText().toString();
         archivo = archivo.replace('/','-') + ".txt";
         try{
             File tarjeta = Environment.getExternalStorageDirectory();
             File file = new File(tarjeta.getAbsolutePath(),archivo);
             OutputStreamWriter osw = new OutputStreamWriter(new FileOutputStream(file));
             osw.write(etTexto.getText().toString());
             osw.flush();
             osw.close();
             /*OutputStreamWriter file = new OutputStreamWriter(openFileOutput(archivo,MODE_PRIVATE));
             file.write(etTexto.getText().toString());
             file.flush();
             file.close();*/
         }
         catch (IOException e){
             Log.i("Agenda",e.toString());
         }
         Toast.makeText(this,"Datos grabados",Toast.LENGTH_SHORT).show();
         this.LimpiarTextos();
     }

}
