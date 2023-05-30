# Bienvenue sur mon Projet ProjetTuto


C'est un site de gestion de recettes que j'ai développé via le framework Symfony qui se base sur un MVC (modèle / vue / controller).
Il permet aux utilisateurs de créer un compte avec des recettes / ingrédients.
J'ai intégré des formulaires pour chaque CRUD ce qui permet à l'utilisateur d'alimenter son compte en recettes et ingrédients et une gestion publique / privée de toutes les recettes.
J'ai intégré également l'API EasyAdmin qui permet à un ou plusieurs administrateurs de gérer différents CRUD liés aux différentes entités de la base de données.

## Vue de l'accueil: 

![Markdown Logo](https://zupimages.net/up/23/22/oj0m.png)

Dans l'accueil , j'ai introduit une NavBar qui est modifiée en fonction du contexte, si l'utilisateur est connecté cela permet d'accéder à ses recettes.
S'il possède un rôle administrateur cela permet l'accès au panneau d'administateur et la barre de navigation s'adapte en fonction de l'utilisateur


# Gestion d'un Controller 


![Markdown Logo](https://www.zupimages.net/up/23/12/tm4l.png)

Ici le controller "RecipeController" nous permet de gérer plusieures routes et de créér/modifier/suprimer une recette.
ainsi que d'afficher uniquement les recettes publiques / privées.
La premiere nous avons la route ci-dessous

```
#[IsGranted('ROLE_USER')]
#[Route('/recette/creation', 'recipe.new', methods: ['GET', 'POST'])] 
```
qui permet la création d'une nouvelle recette via le formulaire ci-dessous :

![Markdown Logo](https://zupimages.net/up/23/22/cmu4.png)


# TEST UNITAIRE ET FONCTIONNEL


J'ai effectué une série de tests unitaires & fonctionnels afin de me familiariser avec différents scénarii possibles et vérifier que la plupart des fonctionnalités ne comportaient pas de bug.

Via le WebtestCase , j'ai pu tester que l'ajout d'un ingrédient fonctionne correctement.

Voici un apercu du test en question :

![Markdown Logo](https://www.zupimages.net/up/23/12/lebg.png)


J'ai intégré une Api EasyAdmin qui permet d'accéder à un panneau d'administrateur :


![Markdown Logo](https://www.zupimages.net/up/23/12/bb4l.png)
