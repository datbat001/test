package com.example.conocimiento

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.Menu
import android.widget.Button

class Menu : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_menu)

        var btnAct = findViewById<Button>(R.id.btnactualmente)
        var btnhobbys = findViewById<Button>(R.id.btnhobbys)
        var btnFutute = findViewById<Button>(R.id.btnfuture)


        btnAct.setOnClickListener {
            val intent = Intent(this,Yo_activity::class.java)
            startActivity(intent)
        }
        btnhobbys.setOnClickListener {
            val intent = Intent(this,hobbys::class.java)
            startActivity(intent)
        }
        btnFutute.setOnClickListener {
            val intent = Intent(this,futureActivity::class.java)
            startActivity(intent)
        }
    }
}