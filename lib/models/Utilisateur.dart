class Utilisateur {
  final int utilisateurId;
  final String nom;
  final String prenom;
  final String email;
  final String adresse;
  final String telephone;
  final String motDePasse;
  final String niveau;

  Utilisateur({
    required this.utilisateurId,
    required this.nom,
    required this.prenom,
    required this.email,
    required this.adresse,
    required this.telephone,
    required this.motDePasse,
    required this.niveau,
  });
}
