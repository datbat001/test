package com.example.conocimiento

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        var btnAboutMe = findViewById<Button>(R.id.btnAM)
        var btnContinue = findViewById<Button>(R.id.btnContinue)

        btnAboutMe.setOnClickListener {
            val intent = Intent(applicationContext,aboutMe::class.java)
            startActivity(intent)
        }
        btnContinue.setOnClickListener {
            val intent = Intent(applicationContext,menu::class.java)
            startActivity(intent)
        }
    }
}