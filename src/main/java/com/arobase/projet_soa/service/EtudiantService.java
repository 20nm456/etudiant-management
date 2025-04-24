package com.arobase.projet_soa.service;
import org.springframework.stereotype.Service;
import com.arobase.projet_soa.model.Etudiant;
import com.arobase.projet_soa.repository.EtudiantRepository; // Ensure this path matches the actual location of the EtudiantRepository class
import java.util.List; // Import List from java.util
import org.springframework.beans.factory.annotation.Autowired;

@Service
public class EtudiantService {
    private final EtudiantRepository etudiantRepository;

    @Autowired
    public EtudiantService(EtudiantRepository etudiantRepository) {
        this.etudiantRepository = etudiantRepository;
    }
    public List<Etudiant> getAllEtudiants() {
        return etudiantRepository.findAll();
    }
    public Etudiant getEtudiantById(Long id) {
        return etudiantRepository.findById(id).orElse(null);
    }
    public Etudiant saveEtudiant(Etudiant etudiant) {
        return etudiantRepository.save(etudiant);
    }
    public void deleteEtudiant(Long id) {
        etudiantRepository.deleteById(id);
    }
    public Etudiant updateEtudiant(Long id, Etudiant updatedEtudiant) {
        if (etudiantRepository.existsById(id)) {
            updatedEtudiant.setId(id); // Ensure the ID is set for the updated entity
            return etudiantRepository.save(updatedEtudiant);
        }
        return null; 
    }// or throw an exception if preferred}

    public Etudiant getEtudiantByMatricule(String matricule) {
        return etudiantRepository.findByMatricule(matricule);
    }
}
