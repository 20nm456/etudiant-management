package com.arobase.projet_soa.api;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import java.util.List;
import com.arobase.projet_soa.model.Etudiant; // Ensure this path matches the actual location of the Etudiant class
import com.arobase.projet_soa.model.Cote; // Ensure this path matches the actual location of the Cote class
import com.arobase.projet_soa.service.EtudiantService; // Ensure this path matches the actual location of the EtudiantService class
import com.arobase.projet_soa.service.CoteService; // Ensure this path matches the actual location of the CoteService class
import org.springframework.web.bind.annotation.RequestParam;

@RestController
@RequestMapping("/api")
public class Controller {
    private final EtudiantService etudiantService;
    private final CoteService coteService;

    @Autowired
    public Controller(EtudiantService etudiantService, CoteService coteService) {
        this.etudiantService = etudiantService;
        this.coteService = coteService;
    }
    @GetMapping("/etudiants")
    public List<Etudiant> getAllEtudiants() {
        return etudiantService.getAllEtudiants();
    }
    @GetMapping("/etudiants/searchm/{matricule}")
    public Etudiant getEtudiantByMatricule(@RequestParam String matricule) {
        return etudiantService.getEtudiantByMatricule(matricule);
    }
    @GetMapping("/etudiants/search/{id}")
    public Etudiant getEtudiantById(@RequestParam Long id) {
        return etudiantService.getEtudiantById(id);
    }
   
    @GetMapping("/cotes")
    public List<Cote> getAllCotes() {
        return coteService.getAllCotes();
    }
    @GetMapping("/cotes/searchid")
    public Cote getCoteById(@RequestParam Long id) {
        return coteService.getCoteById(id);
    }
    @GetMapping("/cotes/search")
    public List<Cote> searchCotes(@RequestParam String matricule) {
        return coteService.getCotesByEtudiantMatricule(matricule);
    }
    
}
