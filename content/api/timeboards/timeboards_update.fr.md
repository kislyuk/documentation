---
title: Mettre à jour un Timeboard
type: apicontent
order: 21.2
external_redirect: /api/#update-a-timeboard
---

## Mettre à jour un Timeboard

##### Arguments

* **`title`** [*obligatoire*]:  
    Le nom du dashboard.
* **`description`** [*obligatoire*]:  
    Une description du contenu du dashboard.
* **`graphs`** [*obligatoire*]:  
    Une liste de définitions de graphique. Les définitions de graphique suivent cette forme:
    * **`title`** [*obligatoire*]:  
        Le nom du graphique.
    * **`definition`** [*obligatoire*]:  
    La définition du graphique. Lisez le [Guide du graphique][1] pour en savoir plus sur les graphique. Exemple:
    `{"requests": [{"q": "system.cpu.idle{*} by {host}"}`

* **`template_variables`** [*optionnel*, *défaut*=**None**]:  
    Liste des template variables utilisable dans le templating Dashboard. Les Templates variables suivent cette forme:
    * **`name`** [*obligatoire*]:
     Le nom de la variable.

    * **`prefix`** [*optionnel*, *défaut*=**None**]:  
    Le préfixe de tag associé à la variable. Seuls les tags avec ce préfixe apparaissent dans la liste déroulante des variables.

    * **`default`** [*optionnel*, *défaut*=**None**]:  
    La valeur par défaut de la Template variable lors du chargement du dasboard.

[1]: /graphing/
