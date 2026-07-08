# dbt-from-scratch

Apprends dbt de zéro avec **dbt Fusion** et **DuckDB** — pas de compte cloud,
pas de Python, tout tourne en local.

Repo compagnon de la série vidéo [KottioDev](LIEN_CHAINE).

## 📺 Vidéos

1. [dbt en 2026 : Setup from scratch (Fusion + DuckDB)](LIEN_VIDEO_1)
2. _À venir — construction du projet complet : staging, intermediate, marts, tests_

## 🚀 Démarrage

Suis la vidéo. La seule chose à télécharger depuis ce repo, c'est le dataset :

```bash
mkdir jaffle-data
curl -o jaffle-data/raw_orders.csv https://raw.githubusercontent.com/TONCOMPTE/dbt-from-scratch/main/data/raw_orders.csv
curl -o jaffle-data/raw_customers.csv https://raw.githubusercontent.com/TONCOMPTE/dbt-from-scratch/main/data/raw_customers.csv
```

Tout le reste, on l'écrit à la main — c'est le principe.

## 📁 Contenu

- `data/` — les CSV bruts (dataset Jaffle Shop, le dataset d'apprentissage
  classique de dbt)
- `project/` — le projet terminé, tel que construit dans les vidéos.
  Bloqué quelque part ? Compare tes fichiers avec ceux-là.

## 🛠 Liens d'installation

- [dbt Fusion](https://docs.getdbt.com/docs/fusion/install-fusion-cli)
- [DuckDB](https://duckdb.org/docs/installation/)
- Windows / Linux : les vidéos sont enregistrées sur macOS, mais les deux
  outils supportent ta plateforme — voir les liens ci-dessus.

## 📝 Notes

- Le dataset a été généré avec [jafgen](https://github.com/dbt-labs/jaffle-shop-generator) :
  `pip install jafgen && jafgen --years 2` pour régénérer tes propres données.
- `profiles.yml` est commité dans le projet car DuckDB ne demande aucun
  credential — avec un warehouse cloud, on le garderait hors du repo.
