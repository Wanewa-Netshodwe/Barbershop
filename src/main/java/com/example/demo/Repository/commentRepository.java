package com.example.demo.Repository;

import com.example.demo.Model.Comment;
import com.example.demo.Model.Review;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface commentRepository extends JpaRepository<Review,Long> {

}
