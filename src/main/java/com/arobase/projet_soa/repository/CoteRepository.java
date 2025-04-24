package com.arobase.projet_soa.repository;

import com.arobase.projet_soa.model.Cote; // Ensure this path matches the actual location of the Cote class
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List; // Import List from java.util

public interface CoteRepository extends JpaRepository<Cote, Long> {
    // Custom query methods can be defined here if needed
    List<Cote> findByEtudiantMatricule(String matricule); // Example of a custom query method to find grades by student matricule
}
