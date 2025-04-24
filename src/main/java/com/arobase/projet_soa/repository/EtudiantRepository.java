package com.arobase.projet_soa.repository;
import com.arobase.projet_soa.model.Etudiant; // Ensure this path matches the actual location of the Etudiant class
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List; // Import List from java.util
public interface EtudiantRepository extends JpaRepository<Etudiant, Long> {
    // Custom query methods can be defined here if needed
    Etudiant findByMatricule(String matricule); // Find an Etudiant by their matricule
}
