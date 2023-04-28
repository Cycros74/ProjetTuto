# VillageGreen

https://dev.amorce.org/gsipiere/village/

> Boutique d'instrument de musique en ligne avec interface d'administration
> Ce projet est le file rouge proposé pour l'obtention de mon titre de Concepteur Développeur d'applications



***

## Uml

### Cas d'utilisation

![Class Diagram](http://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/germainsip/projet-village/master/puml/cas_util.puml)

***

### Description des cas d'utilisations

#### Consultation catalogue

> **prérequis:** _Aucun_


- L'utilisateur clique sur "Accès direct à la boutique"
- L'utilisateur peut voir les produits de toutes les catégories
- L'utilisateur peut afficher le détail du produit et son prix HT
- L'utilisateur peut ajouter directement des produits au panier
- L'utilisateur peut consulter son panier

***

#### Effectuer une commande

> **prérequis:** _L'utilisateur possède un compte client_

- L'utilisateur effectue une selection de produits dans son panier
- L'utilisateur enregistre son panier
- L'utilisateur se connecte et valide l'enregistrement du panier
- L'utilisateur vérifie ses coordonnées de livraison et de facturation
- Validation de la commande (cf: Validation commande).

***

### Diagramme de séquence

Sequence utilisateur:

![Sequence Diagram](http://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/germainsip/projet-village/master/puml/sequence_commande.puml)
