class Declaration {
  final int declarationId;
  final int utilisateurId;
  final String nomProprio;
  final String prenomProrprio;
  final String telephoneProprio;
  final double lieuLong;
  final double lieuLat;
  final String photoCarteGrise;

  Declaration(
      {required this.declarationId,
      required this.utilisateurId,
      required this.nomProprio,
      required this.prenomProrprio,
      required this.telephoneProprio,
      required this.lieuLong,
      required this.lieuLat,
      required this.photoCarteGrise});
}
