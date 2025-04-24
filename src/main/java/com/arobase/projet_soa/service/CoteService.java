package com.arobase.projet_soa.service;
import org.springframework.stereotype.Service;
import com.arobase.projet_soa.model.Cote; // Ensure this path matches the actual location of the Cote class
import com.arobase.projet_soa.repository.CoteRepository; 
import org.springframework.beans.factory.annotation.Autowired;
import java.util.List;
// Ensure this path matches the actual location of the CoteRepository class
@Service
public class CoteService {
    private final CoteRepository coteRepository;
    @Autowired
    public CoteService(CoteRepository coteRepository) {
        this.coteRepository = coteRepository;
    }
    public List<Cote> getAllCotes() {
        return coteRepository.findAll();
    }
    public Cote getCoteById(Long id) {
        return coteRepository.findById(id).orElse(null);
    }
    public Cote saveCote(Cote cote) {
        return coteRepository.save(cote);
    }
    public void deleteCote(Long id) {
        coteRepository.deleteById(id);
    }
    public Cote updateCote(Long id, Cote updatedCote) {
        if (coteRepository.existsById(id)) {
            updatedCote.setId(id); // Ensure the ID is set for the updated entity
            return coteRepository.save(updatedCote);
        }
        return null; // or throw an exception if preferred
    }
    public List<Cote> getCotesByEtudiantMatricule(String matricule) {
        return coteRepository.findByEtudiantMatricule(matricule);
    }
}