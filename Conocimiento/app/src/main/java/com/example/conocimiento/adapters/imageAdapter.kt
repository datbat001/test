package com.example.conocimiento.adapters

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import androidx.recyclerview.widget.RecyclerView
import com.example.conocimiento.databinding.ActivityMainBinding
import com.example.conocimiento.databinding.CarouselItemBinding
import com.example.conocimiento.models.imageModel
import com.bumptech.glide.Glide
import com.jackandphantom.carouselrecyclerview.R
import android.R.layout.*
/*
class imageAdapter(private var imageList: ArrayList<imageModel>): RecyclerView.Adapter<imageAdapter.imageViewHolder>(){
    class imageViewHolder(val binding: CarouselItemBinding): RecyclerView.ViewHolder(binding.root){
        val image : ImageView = itemView.findViewById(R.id.image)
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): imageViewHolder {
        val inflater = LayoutInflater.from(parent.context).inflate(R.layout.,false)
        return imageViewHolder(binding)
    }

    override fun onBindViewHolder(holder: imageViewHolder, position: Int) {
       val image = imageList[position]
        holder.binding.apply {
            Glide.with(imageme).load(image.img).into(imageme)
            imageName.text = image.text
        }
    }

    override fun getItemCount(): Int = imageList.size
}*/