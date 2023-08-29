# SuPerTreat - Prediction Models API
This repository contains the API developed in the project EraPerMed project [_Supporting Personalized Treatment Decisions in Head and Neck Cancer through Big Data_](https://www.era-learn.eu/network-information/networks/era-permed/personalised-medicine-multidisciplinary-research-towards-implementation/supporting-personalized-treatment-decisions-in-head-and-neck-cancer-through-big-data) to retrieve clinical predictions for Head and Neck cancer patients. The API provides predictions for 6 clinical scenarios:

1. Base model only with clinical variables (without gene expression)
2. Gene signature model for HPV-Negative patients
3. Gene signature model for HPV-Positive patients
4. Gene signature model for radiosensitivity
5. Gene signature model for Platinum-based chemosensitivity in loco-regionally advanced disease
6. Gene signature model for Cetuximab-sensitivity in loco-regionally advanced disease

The prediction models behind this API were developed in the Oslo Centre for Biostatistics and Epidemiology (OCBE) at the University of Oslo, Norway. 

## Files 
| file | description |
| --- | --- |
| [src/app.py](https://github.com/phydev/supertreat_api/blob/main/src/app.py) | Python Flask API |
| [src/models.yml](https://github.com/phydev/supertreat_api/blob/main/src/models.yml) | SWAGGER definition  |
