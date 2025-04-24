CREATE TABLE etudiant (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    matricule VARCHAR(50) NOT NULL UNIQUE,
    nom VARCHAR(255) NOT NULL,
    prenom VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    promotion VARCHAR(255) NOT NULL,
    filiere VARCHAR(255) NOT NULL,
    telephone VARCHAR(20) NOT NULL
);

CREATE TABLE cote (
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    matiere VARCHAR(255) NOT NULL,
    type VARCHAR(50) NOT NULL, -- Examen, Devoir, etc.
    date DATE L,
    note DECIMAL(5, 2) NOT NULL, -- Note sur 20
    coefficient DECIMAL(5, 2) NOT NULL, -- Coefficient de la matière
    etudiant_matricule VARCHAR(50) NOT NULL,
    FOREIGN KEY (etudiant_matricule) REFERENCES etudiant(matricule) ON DELETE CASCADE

);


-- Insert 20 records into the etudiant table
INSERT INTO etudiant (matricule, nom, prenom, email, password, promotion, filiere, telephone) VALUES
('MAT001', 'Dupont', 'Jean', 'jean.dupont@example.com', 'password1', '2023', 'Informatique', '0612345678'),
('MAT002', 'Martin', 'Claire', 'claire.martin@example.com', 'password2', '2023', 'Informatique', '0612345679'),
('MAT003', 'Durand', 'Paul', 'paul.durand@example.com', 'password3', '2023', 'Informatique', '0612345680'),
('MAT004', 'Bernard', 'Sophie', 'sophie.bernard@example.com', 'password4', '2023', 'Informatique', '0612345681'),
('MAT005', 'Petit', 'Luc', 'luc.petit@example.com', 'password5', '2023', 'Informatique', '0612345682'),
('MAT006', 'Robert', 'Julie', 'julie.robert@example.com', 'password6', '2023', 'Informatique', '0612345683'),
('MAT007', 'Richard', 'Marc', 'marc.richard@example.com', 'password7', '2023', 'Informatique', '0612345684'),
('MAT008', 'Simon', 'Emma', 'emma.simon@example.com', 'password8', '2023', 'Informatique', '0612345685'),
('MAT009', 'Michel', 'Hugo', 'hugo.michel@example.com', 'password9', '2023', 'Informatique', '0612345686'),
('MAT010', 'Lemoine', 'Alice', 'alice.lemoine@example.com', 'password10', '2023', 'Informatique', '0612345687'),
('MAT011', 'Morel', 'Louis', 'louis.morel@example.com', 'password11', '2023', 'Informatique', '0612345688'),
('MAT012', 'Fournier', 'Chloe', 'chloe.fournier@example.com', 'password12', '2023', 'Informatique', '0612345689'),
('MAT013', 'Girard', 'Nathan', 'nathan.girard@example.com', 'password13', '2023', 'Informatique', '0612345690'),
('MAT014', 'Andre', 'Laura', 'laura.andre@example.com', 'password14', '2023', 'Informatique', '0612345691'),
('MAT015', 'Mercier', 'Lucas', 'lucas.mercier@example.com', 'password15', '2023', 'Informatique', '0612345692'),
('MAT016', 'Dupuis', 'Camille', 'camille.dupuis@example.com', 'password16', '2023', 'Informatique', '0612345693'),
('MAT017', 'Lambert', 'Leo', 'leo.lambert@example.com', 'password17', '2023', 'Informatique', '0612345694'),
('MAT018', 'Bonnet', 'Manon', 'manon.bonnet@example.com', 'password18', '2023', 'Informatique', '0612345695'),
('MAT019', 'Francois', 'Tom', 'tom.francois@example.com', 'password19', '2023', 'Informatique', '0612345696'),
('MAT020', 'Martinez', 'Sarah', 'sarah.martinez@example.com', 'password20', '2023', 'Informatique', '0612345697');

-- Insert 20 records into the cote table
INSERT INTO cote (matiere, type, date, note, coefficient, etudiantMatricule) VALUES
('Mathématiques', 'Examen', '2023-01-15', 15.5, 2.0, 'MAT001'),
('Physique', 'Devoir', '2023-02-10', 14.0, 1.5, 'MAT002'),
('Informatique', 'Examen', '2023-03-05', 18.0, 3.0, 'MAT003'),
('Chimie', 'Devoir', '2023-04-12', 12.5, 1.0, 'MAT004'),
('Anglais', 'Examen', '2023-05-20', 16.0, 2.0, 'MAT005'),
('Mathématiques', 'Devoir', '2023-06-15', 13.0, 1.5, 'MAT006'),
('Physique', 'Examen', '2023-07-10', 17.5, 2.5, 'MAT007'),
('Informatique', 'Devoir', '2023-08-05', 19.0, 3.0, 'MAT008'),
('Chimie', 'Examen', '2023-09-12', 11.0, 1.0, 'MAT009'),
('Anglais', 'Devoir', '2023-10-20', 14.5, 2.0, 'MAT010'),
('Mathématiques', 'Examen', '2023-11-15', 16.5, 2.0, 'MAT011'),
('Physique', 'Devoir', '2023-12-10', 13.0, 1.5, 'MAT012'),
('Informatique', 'Examen', '2024-01-05', 18.5, 3.0, 'MAT013'),
('Chimie', 'Devoir', '2024-02-12', 12.0, 1.0, 'MAT014'),
('Anglais', 'Examen', '2024-03-20', 15.0, 2.0, 'MAT015'),
('Mathématiques', 'Devoir', '2024-04-15', 14.0, 1.5, 'MAT016'),
('Physique', 'Examen', '2024-05-10', 17.0, 2.5, 'MAT017'),
('Informatique', 'Devoir', '2024-06-05', 19.5, 3.0, 'MAT018'),
('Chimie', 'Examen', '2024-07-12', 10.5, 1.0, 'MAT019'),
('Anglais', 'Devoir', '2024-08-20', 13.5, 2.0, 'MAT020');


-- Insert 30 additional records into the cote table
INSERT INTO cote (matiere, type, date, note, coefficient, etudiant_matricule) VALUES
('Mathématiques', 'Examen', '2024-09-15', 15.0, 2.0, 'MAT001'),
('Physique', 'Devoir', '2024-10-10', 14.5, 1.5, 'MAT002'),
('Informatique', 'Examen', '2024-11-05', 18.0, 3.0, 'MAT003'),
('Chimie', 'Devoir', '2024-12-12', 13.0, 1.0, 'MAT004'),
('Anglais', 'Examen', '2025-01-20', 16.5, 2.0, 'MAT005'),
('Mathématiques', 'Devoir', '2025-02-15', 12.5, 1.5, 'MAT006'),
('Physique', 'Examen', '2025-03-10', 17.0, 2.5, 'MAT007'),
('Informatique', 'Devoir', '2025-04-05', 19.0, 3.0, 'MAT008'),
('Chimie', 'Examen', '2025-05-12', 11.5, 1.0, 'MAT009'),
('Anglais', 'Devoir', '2025-06-20', 14.0, 2.0, 'MAT010'),
('Mathématiques', 'Examen', '2025-07-15', 16.0, 2.0, 'MAT011'),
('Physique', 'Devoir', '2025-08-10', 13.5, 1.5, 'MAT012'),
('Informatique', 'Examen', '2025-09-05', 18.5, 3.0, 'MAT013'),
('Chimie', 'Devoir', '2025-10-12', 12.0, 1.0, 'MAT014'),
('Anglais', 'Examen', '2025-11-20', 15.5, 2.0, 'MAT015'),
('Mathématiques', 'Devoir', '2025-12-15', 14.5, 1.5, 'MAT016'),
('Physique', 'Examen', '2026-01-10', 17.5, 2.5, 'MAT017'),
('Informatique', 'Devoir', '2026-02-05', 19.5, 3.0, 'MAT018'),
('Chimie', 'Examen', '2026-03-12', 10.0, 1.0, 'MAT019'),
('Anglais', 'Devoir', '2026-04-20', 13.0, 2.0, 'MAT020'),
('Mathématiques', 'Examen', '2026-05-15', 15.5, 2.0, 'MAT001'),
('Physique', 'Devoir', '2026-06-10', 14.0, 1.5, 'MAT002'),
('Informatique', 'Examen', '2026-07-05', 18.0, 3.0, 'MAT003'),
('Chimie', 'Devoir', '2026-08-12', 12.5, 1.0, 'MAT004'),
('Anglais', 'Examen', '2026-09-20', 16.0, 2.0, 'MAT005'),
('Mathématiques', 'Devoir', '2026-10-15', 13.0, 1.5, 'MAT006'),
('Physique', 'Examen', '2026-11-10', 17.5, 2.5, 'MAT007'),
('Informatique', 'Devoir', '2026-12-05', 19.0, 3.0, 'MAT008'),
('Chimie', 'Examen', '2027-01-12', 11.0, 1.0, 'MAT009');