#!/bin/bash
set -e

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$REPO_DIR"

# Init repo if needed
if [ ! -d ".git" ]; then
    git init
    git checkout -b main
fi

git add -A
git commit -m "init: book metadata"

# ─────────────────────────────────────────────────────────────────────────────
# MAIN - L'arrivée
# ─────────────────────────────────────────────────────────────────────────────
git commit --allow-empty -m "Premier jour, premier choc

Tu pousses la porte du WeWork au troisième étage. Tu portes ton plus beau costard slim bleu marine, ta chemise est repassée au millimètre, tes mocassins Tod's brillent sous les néons. Tu as quitté McKinsey il y a exactement 72 heures. Tu as encore le réflexe de dire 'deliverable' toutes les trois phrases.

Élodie, la CEO, t'accueille avec un café tiède dans un mug ébréché marqué 'World's Okayest Startup'. Elle te fait le tour des locaux. Il n'y a pas de bureau attitré. Il n'y a pas d'organigramme. Il n'y a pas de process. Quand tu demandes où est la documentation, elle rigole. Tu crois qu'elle plaisante. Elle ne plaisante pas."

DIVERGE_AUDIT=$(git rev-parse HEAD)

git commit --allow-empty -m "Le chaos a un visage, et il sourit

Tu passes ta première semaine à observer. Notion : 847 pages, dont 840 brouillons vides. Slack : 156 channels, dont #random concentre 94% du trafic. Les décisions se prennent dans des threads de 200 messages qui finissent par 'bon on fait quoi du coup ?'. Pierre code avec un casque depuis 2019. Antoine a un sticker 'Process is the enemy of progress'.

Et pourtant. Les features sortent. Les clients sont contents. Le NPS est à 72. La boîte tourne. Pas grâce à l'organisation, mais grâce aux gens. Sabrina, l'office manager, est le centre nerveux invisible de tout. Tu es face à un dilemme qui te ronge : ce chaos fonctionne, mais il ne scalera jamais. Faut-il tout restructurer maintenant et risquer de casser ce qui marche ? Ou laisser faire et attendre que ça s'effondre sous son propre poids ?"

DIVERGE_REORG=$(git rev-parse HEAD)

# ─────────────────────────────────────────────────────────────────────────────
# MAIN - L'audit
# ─────────────────────────────────────────────────────────────────────────────
git commit --allow-empty -m "L'audit révèle l'abîme

Tu lances un audit. Google Form de 47 questions. 'Organizational Maturity Assessment'. Camille, la Head of People, te regarde avec ce mélange de pitié et d'espoir qu'ont les gens qui ont déjà vu trois COO passer.

Les résultats arrivent. 23 réponses sur 80. Pierre a répondu 'non' à tout. Antoine a rempli avec des paroles de Brassens. Mais Sabrina a écrit 4 pages qui décrivent tout. Tu les scotches au mur. C'est ta feuille de route. Les données sont claires : personne ne sait qui fait quoi, les objectifs sont flous, les priorités changent chaque semaine. Tu tiens dans tes mains la preuve que le chaos est réel. La question qui te hante : faut-il imposer un cadre d'en haut et risquer la révolte, ou co-construire avec des gens qui ne veulent pas de cadre du tout ?"

DIVERGE_OKR=$(git rev-parse HEAD)

git commit --allow-empty -m "Trois 'Head of Growth' et un fantôme

Tu découvres que trois personnes ont le titre 'Head of Growth'. Aucune ne sait que les deux autres existent. Le 'VP of Strategy' n'a jamais défini de stratégie mais fait d'excellents cappuccinos. Le 'Lead Developer' est un ancien stagiaire marketing dont personne n'a mis à jour la fiche.

Youssef t'envoie un organigramme de 2020 qui ressemble à un plan de métro dessiné par un enfant sous caféine. Tu réalises que le problème n'est pas l'absence de structure. C'est que chacun s'est construit sa propre structure informelle, avec ses propres outils, ses propres rituels, ses propres raccourcis. Tu es à la croisée des chemins : harmoniser tous ces micro-systèmes en un seul cadre cohérent, au risque d'effacer ce qui fonctionne en local ? Ou laisser chaque équipe garder ses habitudes et tenter de les connecter, au risque que rien ne s'aligne jamais ?"

DIVERGE_TOOLING=$(git rev-parse HEAD)

git commit --allow-empty -m "Le PowerPoint de 84 slides

Tu t'enfermes un week-end entier. Tu produis un deck de 84 slides : 'Operational Excellence Roadmap - From Chaos to Scale'. Il y a une slide avec la pyramide de Maslow appliquée aux organisations. Il y a une slide avec le modèle de Tuckman (Forming, Storming, Norming, Performing). Il y a une slide avec ta photo en noir et blanc et la citation 'Structure enables freedom' que tu t'es attribuée à toi-même.

Tu présentes le deck en comité de direction. Élodie s'endort à la slide 23. Pierre part à la slide 7. Antoine reste jusqu'à la fin par morbide curiosité. Sabrina n'est pas invitée au comité, mais elle sait déjà tout parce qu'elle a lu le deck sur ton écran en passant derrière ton bureau. 'C'est ambitieux,' dit-elle. En langage Sabrina, ça signifie 'c'est impossible mais je te laisse essayer'."

# ─────────────────────────────────────────────────────────────────────────────
# MAIN - La première tentative
# ─────────────────────────────────────────────────────────────────────────────
git commit --allow-empty -m "Le premier process se heurte au mur humain

Tu présentes ton premier process en all-hands. Workflow de validation des dépenses. 7 étapes. 3 niveaux d'approbation. Un formulaire Typeform. Un Slack bot de notification. Tu es fier. Animation PowerPoint avec des flèches qui bougent.

Le silence est assourdissant. Antoine lève la main : 'Avant, je demandais à Sabrina et elle disait oui ou non. 30 secondes. Là tu proposes 7 étapes pour acheter des post-its ?' La salle rigole. Tu meurs à l'intérieur. Le soir, tu restes seul devant ton écran. Le rejet est total, mais le besoin de structure est réel. Tu peux sentir que les gens ne veulent pas de process, et pourtant sans eux la boîte va dans le mur à 150 personnes. Faut-il forcer le passage en comptant sur l'habitude ? Ou repartir de zéro avec une approche radicalement différente, quitte à admettre que ton premier jet était mauvais ?"

DIVERGE_ONBOARDING=$(git rev-parse HEAD)

git commit --allow-empty -m "La résistance passive, un art olympique

Tu observes un phénomène fascinant : personne ne dit non. Tout le monde dit 'ah oui super, on va faire ça'. Et personne ne le fait. Les gens acquiescent en réunion, retournent à leur bureau, et continuent exactement comme avant. Résistance passive de niveau olympique.

Camille t'explique : 'Ici, on ne confronte pas. On attend que les trucs meurent de leur belle mort.' 14 initiatives de process ont été lancées avant toi. Aucune n'a survécu plus de 6 semaines. Tu es la semaine 4. Le compte à rebours a commencé. Tu sens que quelque chose ne se mesure pas dans tes tableurs : la confiance. Les gens ne croient pas en tes process parce qu'ils ne croient pas encore en toi. La tentation est forte de mesurer, de prouver par les chiffres, de construire un dashboard irréfutable. Mais peut-être que ce n'est pas de data dont tu as besoin. Peut-être que c'est de patience..."

DIVERGE_KPI=$(git rev-parse HEAD)

# ─────────────────────────────────────────────────────────────────────────────
# MAIN - RACI
# ─────────────────────────────────────────────────────────────────────────────
git commit --allow-empty -m "La matrice RACI, l'arme fatale du consultant

Tu dégaines l'arme ultime du consultant : la matrice RACI. Responsible, Accountable, Consulted, Informed. Un spreadsheet de 200 lignes. Un week-end entier. 14 cafés. Tu te sens vivant.

Le lundi, Antoine demande : 'C'est quoi la différence entre Responsible et Accountable ?' Tu expliques pendant 20 minutes. Pierre enlève son casque pour la première fois en 3 ans juste pour dire : 'Donc si je comprends bien, on a besoin d'un tableur pour savoir qui fait quoi. Avant on demandait à Sabrina.' Sabrina hausse les épaules : 'C'est vrai que je sais tout.' Tu sens monter une tension sourde : d'un côté, la connaissance tribale incarnée par Sabrina est un single point of failure. De l'autre, formaliser cette connaissance revient à bureaucratiser ce qui marchait par la confiance. Les incidents se multiplient quand Sabrina est absente. Faut-il documenter chaque rôle au risque de tuer l'agilité naturelle ? Ou accepter la fragilité d'un système qui repose sur une seule personne ?"

DIVERGE_INCIDENT=$(git rev-parse HEAD)

git commit --allow-empty -m "Confluence, le cimetière où vont mourir les docs

Tu déploies Confluence. Espaces, templates, arbres de pages magnifiques. Formation de 2 heures. Un guide 'Comment documenter' de 34 pages. L'ironie ne t'échappe pas, mais tu décides de l'ignorer.

Trois mois plus tard, Confluence contient : ta documentation sur comment documenter, un CR de réunion écrit par Youssef (le seul), 47 pages vides, et un article 'TEST NE PAS SUPPRIMER' qui est là depuis le premier jour. Le constat est accablant : les gens ne documentent pas parce qu'ils n'ont pas le temps, pas parce qu'ils n'ont pas l'outil. Tu as résolu le mauvais problème. Le vrai sujet, c'est le temps. Chaque heure passée à documenter est une heure qui ne produit pas. Tu peux forcer la documentation et accepter de ralentir encore. Ou tu peux abandonner la doc formelle et trouver un autre moyen de préserver la connaissance. Mais lequel ?"

DIVERGE_CHANGE=$(git rev-parse HEAD)

# ─────────────────────────────────────────────────────────────────────────────
# MAIN - Les réunions
# ─────────────────────────────────────────────────────────────────────────────
git commit --allow-empty -m "Le meeting cadence, ou comment remplir 60% des agendas

Tu instaures un 'meeting cadence'. Weekly sync, bi-weekly review, monthly retrospective, quarterly planning. Chaque réunion a un agenda, un facilitateur, un time-keeper, un note-taker. Tu as lu 'Death by Meeting' de Patrick Lencioni. Tu n'as retenu que le titre, ironiquement.

Les gens passent 60% de leur temps en réunion. Il y a un pre-sync avant le weekly sync. Un debrief après le debrief. Antoine code en réunion caméra éteinte. Pierre n'a jamais allumé sa caméra. Élodie fait les all-hands depuis sa voiture en double file. Tu vois les calendriers rougir et la productivité chuter, mais tu vois aussi que pour la première fois, les équipes sont alignées. L'information circule. Les décisions sont tracées. Le prix est-il trop élevé ? Faut-il sacrifier l'alignement pour retrouver du temps de travail ? Ou automatiser la coordination pour libérer les agendas sans perdre la synchronisation ?"

DIVERGE_AUTOMATISATION=$(git rev-parse HEAD)

git commit --allow-empty -m "Le comité de pilotage des comités de pilotage

Tu crées un comité de pilotage pour superviser la transformation. Puis un comité technique. Puis produit. Puis RH. Puis tu réalises qu'il faut un comité pour coordonner les comités. Le 'Steering Committee of Steering Committees'. Tu ne vois pas le problème.

Camille vient te voir : 'Les gens n'ont plus de créneaux pour travailler. Le calendrier de tout le monde est rouge de 9h à 18h. Antoine a bloqué tous ses créneaux avec des événements intitulés TRAVAIL VRAI.' Tu regardes ton propre calendrier. Tu as 11 réunions aujourd'hui. Tu n'as pas le temps de réfléchir à la solution parce que ta prochaine réunion commence dans 4 minutes."

# ─────────────────────────────────────────────────────────────────────────────
# MAIN - Jira
# ─────────────────────────────────────────────────────────────────────────────
git commit --allow-empty -m "Le workflow Jira à 14 colonnes, ou l'art de ralentir

Tu configures Jira. 14 étapes : Backlog, Refinement, Ready for Dev, In Progress, Code Review, QA Ready, QA In Progress, QA Passed, Staging, UAT, Ready for Prod, Deploying, Done, Post-Deploy Verification. Chaque transition a des conditions et des champs obligatoires. Il y a des sous-tâches qui ont leurs propres workflows.

Pierre regarde le board. 14 colonnes. Il ferme l'onglet et pousse en prod depuis son terminal. Antoine fait pareil avec un commentaire : 'Done (j'ai skip les 13 premières étapes)'. Youssef est le seul à suivre le workflow complet. Un ticket de correction de typo lui prend 3 jours de process pour 5 minutes de travail. La tension monte entre deux camps : ceux qui veulent de la rigueur et de la traçabilité, et ceux qui veulent juste coder et livrer. Les deux ont raison. Et toi, tu es assis sur la faille sismique. Faut-il imposer le process et perdre les rebelles ? Ou assouplir et perdre le contrôle ?"

DIVERGE_HOTFIX_PROD=$(git rev-parse HEAD)

git commit --allow-empty -m "Quand les exceptions dévorent la règle

Tu commences à accorder des exceptions. 'Pour les hotfixes, on saute les étapes 3 à 7.' Puis : 'Pour les petits bugs, on simplifie.' Puis : 'Pour le vendredi, process allégé.' Au bout de deux mois, il y a plus d'exceptions que de règles.

Tu as créé un document Confluence intitulé 'Exceptions au process standard'. 12 pages. Un flowchart pour déterminer quelle exception s'applique. L'exception au flowchart d'exception est : 'En cas de doute, demandez à Sabrina.' Tu réalises avec horreur que ton système est en train de s'auto-dévorer. Chaque exception crée de la confusion, et chaque confusion crée le besoin d'une nouvelle exception. C'est un serpent qui se mord la queue. Les gens contournent tes process avec ta propre bénédiction. Faut-il supprimer les exceptions et revenir à la rigidité ? Ou admettre que si tout le monde contourne le process, c'est le process qui a tort ?"

DIVERGE_HOTFIX_DEMISSION=$(git rev-parse HEAD)

# ─────────────────────────────────────────────────────────────────────────────
# MAIN - L'étouffement
# ─────────────────────────────────────────────────────────────────────────────
git commit --allow-empty -m "Les chiffres ne mentent pas, et ils sont terrifiants

Les chiffres parlent. Time-to-market passé de 2 semaines à 6. NPS employé de 72 à 31. Features livrées par trimestre divisées par 3. Mais hey, les documents Confluence ont été multipliés par 47.

Élodie te convoque. 'Les process devaient nous aider à scaler. On a scalé les process, pas la boîte.' Tu ouvres la bouche pour parler de 'phase d'adoption'. Elle lève la main : 'Stop. Pas de framework. Juste... regarde autour de toi.' L'open space est silencieux. Le mauvais silence. Celui de gens qui attendent qu'on valide leur ticket Jira pour avoir le droit de travailler. Tu es au bord du gouffre. Les gens souffrent. Le business ralentit. Ton plus gros client commence à poser des questions. Faut-il tout arrêter et faire machine arrière en admettant l'échec ? Ou tenir le cap en pariant que la courbe d'adoption finira par s'inverser ?"

DIVERGE_HOTFIX_CLIENT=$(git rev-parse HEAD)

git commit --allow-empty -m "Le point de rupture

Un jeudi soir, tu restes tard. Le bureau est vide sauf Sabrina qui finit les commandes de fournitures. Tu regardes tes dashboards, tes matrices, tes workflows.

Tu réalises un truc : avant toi, c'était le chaos. Mais un chaos productif. Les gens livraient. Les clients étaient contents. L'ambiance était bonne. Maintenant, c'est ordonné, documenté, proceduré. Et c'est mort. Tu as transformé une startup vivante en une administration. Tu as McKinsey-ifié une boîte qui n'avait pas besoin de McKinsey. La prise de conscience est brutale. Deux voix se battent dans ta tête. Celle du consultant : simplifier les process, les rendre plus légers, itérer. Celle que tu n'as jamais écoutée : et si le problème, c'était toi ? Pas tes frameworks, pas tes outils, mais ta façon de voir les gens comme des rouages d'un système à optimiser. Le choix est existentiel : changer de méthode, ou changer de regard ?"

DIVERGE_FIX_LEAN=$(git rev-parse HEAD)

# ─────────────────────────────────────────────────────────────────────────────
# MAIN - Le bilan
# ─────────────────────────────────────────────────────────────────────────────
git commit --allow-empty -m "La conversation avec Camille

Camille frappe à ta porte. Elle s'assoit. Elle ferme la porte. Mauvais signe. 'Je dois te dire un truc que personne n'ose te dire.' Tu serres les dents. 'Tu es brillant. Tes frameworks sont impeccables. Tes process sont théoriquement parfaits. Mais tu as oublié un truc : les gens ne sont pas des workflows. Ils ont des émotions. Ils ont besoin de sens. Pas de Jira.'

Elle continue : 'Quand quelqu'un ne suit pas ton process, tu penses qu'il résiste au changement. Peut-être qu'il te dit juste que le process ne l'aide pas.' Tu restes silencieux. C'est la première fois que tu écoutes sans préparer ta réponse. C'est la première fois que tu entends."

git commit --allow-empty -m "La remise en question

Tu prends une semaine de congé. Tu marches. Tu réfléchis. Tu ne crées pas un seul document Notion pendant 7 jours. C'est la première fois depuis 2017. Tu as des sueurs froides le troisième jour. Le cinquième jour, tu commences à respirer.

Tu reviens avec une idée radicale : et si les process servaient les gens, au lieu que les gens servent les process ? Et si on gardait 20% des process et qu'on jetait le reste ? Et si la matrice RACI, c'était juste 'demandez à Sabrina' avec des étapes en plus ? Tu ouvres Notion pour écrire tes réflexions. Tu fermes Notion. Tu prends un post-it. Tu écris : 'Les process sont des outils, pas des fins.' Tu le colles sur ton écran. C'est le début de quelque chose."

DIVERGE_FIX_RETOUR=$(git rev-parse HEAD)

git commit --allow-empty -m "Le bilan final

Six mois plus tard, tu fais le bilan. Tu as gardé 4 process sur 23. Tu as supprimé 11 des 14 étapes Jira. Tu as fermé 3 comités sur 5. Tu as réduit les réunions de 60% du temps à 25%. Sabrina a été promue Chief of Staff (elle faisait déjà le job, autant que le titre suive).

Pierre t'a invité à prendre un café. C'est la première fois qu'il t'adresse la parole en dehors d'un Slack. Il t'a dit : 'Au début je te détestais. Après je te détestais plus fort. Maintenant ça va.' Venant de Pierre, c'est une déclaration d'amour. Élodie t'a dit : 'Tu as mis 6 mois à comprendre ce que Sabrina savait depuis le jour 1.' Tu as ri. Puis tu as pleuré un peu dans les toilettes. Puis tu as ri à nouveau. Tu es enfin devenu un bon COO."

git commit --allow-empty -m "Épilogue : Le mail de McKinsey

Tu reçois un mail de ton ancien partner chez McKinsey. 'On a un nouveau framework pour la transformation opérationnelle des scale-ups. 47 slides. Tu veux voir ?' Tu regardes le mail. Tu regardes le post-it sur ton écran. Tu regardes Sabrina qui gère trois crises en parallèle avec un café dans une main et un téléphone dans l'autre.

Tu réponds : 'Non merci. J'ai trouvé un meilleur framework. Il tient sur un post-it.' Tu fermes le mail. Tu vas prendre un café. Pas à la machine. Avec l'équipe. Parce que finalement, les meilleures décisions se prennent peut-être bien autour de la machine à café. Il suffisait d'ajouter un peu de structure. Juste un peu. Pas 14 étapes Jira."

# =============================================================================
# BRANCHES SECONDAIRES
# =============================================================================

# ─────────────────────────────────────────────────────────────────────────────
# feature/reorganisation - Squads, Tribes, Chapters à la Spotify
# ─────────────────────────────────────────────────────────────────────────────
git checkout -b feature/reorganisation $DIVERGE_REORG

git commit --allow-empty -m "Réorganisation : tu découvres le modèle Spotify

Tu as lu un blog post de 2014 sur le 'Spotify Model'. Squads, Tribes, Chapters, Guilds. Tu es en extase. Tu fais un benchmark de 3 jours. Tu crées un deck de 84 slides. Tu es convaincu que c'est LA solution. Le fait que Spotify lui-même ait abandonné ce modèle ne te refroidit pas. Les détails, c'est pour les gens qui n'ont pas de vision.

Tu présentes le nouveau modèle organisationnel en all-hands. Il y a un organigramme en 3D. Il y a des flèches dans tous les sens. Il y a des pointillés qui signifient 'relation fonctionnelle' et des traits pleins qui signifient 'relation hiérarchique'. Personne ne comprend la différence. Toi non plus, si tu es honnête."

git commit --allow-empty -m "Réorganisation : la création des squads

Tu crées 8 squads. 'Squad Growth', 'Squad Platform', 'Squad Core Product', 'Squad Customer Success', 'Squad Data', 'Squad DevOps', 'Squad Mobile' et 'Squad Innovation'. Il y a 80 personnes dans la boîte. Certaines squads ont 3 personnes. La 'Squad Innovation' n'a qu'Antoine, qui refuse de participer à quoi que ce soit.

Chaque squad a besoin d'un Product Owner, d'un Squad Lead, d'un Agile Coach. Tu n'as pas assez de monde. Des gens cumulent les rôles. Pierre est PO, Squad Lead et développeur de la Squad Platform. Il fait exactement la même chose qu'avant, mais maintenant il a trois titres sur LinkedIn."

git commit --allow-empty -m "Réorganisation : les tribes et les chapters

Tu crées 3 Tribes et 5 Chapters. Personne ne sait à quelle Tribe appartient son Squad. Le Chapter Lead des développeurs backend est aussi dans la Squad Growth et la Tribe Customer. Il a trois one-on-one par semaine avec trois managers différents. Il ne sait plus à qui reporter ses congés.

Camille craque : 'On avait un organigramme simple, personne ne le suivait. Maintenant on a un organigramme complexe, personne ne le comprend. C'est pas un progrès, c'est un changement de catégorie de chaos.' Elle a raison. Tu ajoutes une Guild transverse pour améliorer la communication entre Squads. C'est une réunion de plus."

git commit --allow-empty -m "Réorganisation : le modèle s'effondre en 6 semaines

Six semaines plus tard, la réalité s'impose. Les squads ne communiquent plus entre elles. Chaque squad a recréé ses propres outils, ses propres rituels, ses propres channels Slack. Il y a maintenant 47 channels qui commencent par 'squad-'. Les gens passent plus de temps à se coordonner qu'à travailler.

Élodie t'envoie un message : 'J'ai lu un article qui dit que le modèle Spotify ne marchait même pas chez Spotify.' Tu lis l'article. Tu fermes ton laptop. Tu vas prendre l'air. Sur le chemin, tu croises Sabrina qui fait tourner la boîte exactement comme avant, en ignorant superbement les Squads, Tribes et Chapters. 'L'organigramme, c'est pour les murs. L'organisation réelle, c'est dans ma tête,' te dit-elle. Tu commences à comprendre."

git commit --allow-empty -m "Réorganisation : le retour silencieux à la normale

Tu ne fais pas d'annonce officielle. Tu ne crées pas de deck 'Lessons Learned from the Spotify Model'. Tu laisses juste les choses mourir naturellement. Les squads redeviennent des équipes. Les tribes redeviennent des départements. Les chapters redeviennent des réunions entre gens qui font le même métier.

Au bout de 3 mois, plus personne ne dit 'squad'. Sauf Youssef, qui continue à utiliser le vocabulaire par politesse envers toi. Un jour, un nouveau arrive et demande : 'C'est quoi cette page Confluence sur les Tribes ?' Camille répond : 'Un vestige archéologique. Comme les hiéroglyphes, mais moins utile.' Tu fais semblant de ne pas avoir entendu."

git checkout main

# ─────────────────────────────────────────────────────────────────────────────
# feature/okr-implementation - OKRs pour tout le monde
# ─────────────────────────────────────────────────────────────────────────────
git checkout -b feature/okr-implementation $DIVERGE_OKR

git commit --allow-empty -m "OKRs : tu lis 'Measure What Matters' en un week-end

Tu as dévoré le livre de John Doerr. Tu es transcendé. Les OKRs, c'est la réponse à tout. Objectives and Key Results. Google fait ça. Intel fait ça. Si ça marche pour des boîtes de 100 000 personnes, ça marchera forcément pour une startup de 80. La logique est imparable (elle ne l'est pas).

Tu lances un workshop OKRs de 4 heures. Tu expliques les concepts : Objectifs ambitieux, Key Results mesurables, alignement vertical et horizontal. Les gens hochent la tête. Ils comprennent le concept. Ce qu'ils ne comprennent pas, c'est pourquoi il faut 4 heures pour dire 'fixez-vous des objectifs et mesurez-les'."

git commit --allow-empty -m "OKRs : 847 objectifs, aucun aligné

Chaque personne a créé ses OKRs. Tu as 847 objectifs dans le système. Le problème : personne ne les a alignés entre eux. L'objectif de la squad Growth est d'augmenter le trafic de 200%. L'objectif de la squad Platform est de réduire les coûts infra de 40%. Les deux sont incompatibles, mais personne ne s'en est rendu compte parce que personne ne lit les OKRs des autres.

Antoine a écrit comme objectif : 'Survivre au trimestre sans démissionner.' Son Key Result : 'Nombre de jours sans envoyer un mail de démission : > 60.' Camille te dit que techniquement, c'est un OKR valide. C'est mesurable, temporel et ambitieux. Tu ne peux pas argumenter."

git commit --allow-empty -m "OKRs : la review trimestrielle de 6 heures

C'est le jour de la Quarterly Business Review. Tu as bloqué 6 heures. Six. Heures. Chaque squad présente ses OKRs, son taux d'atteinte, ses learnings. La Squad Growth a atteint 12% de son objectif mais a 'beaucoup appris'. La Squad Platform a atteint 340% parce que Pierre a fixé des objectifs ridiculement bas par stratégie.

À l'heure 4, plus personne n'écoute. Antoine dort les yeux ouverts (un talent qu'il a développé chez son précédent employeur). Élodie vérifie ses mails. Sabrina est retournée à son bureau parce que 'quelqu'un doit quand même faire tourner la boîte'. Youssef, le seul à avoir lu tous les OKRs de tout le monde, pose des questions pertinentes que tout le monde ignore."

git commit --allow-empty -m "OKRs : le cascading nightmare

Tu découvres le concept de 'cascading OKRs' : les objectifs de l'entreprise se déclinent en objectifs de tribe, qui se déclinent en objectifs de squad, qui se déclinent en objectifs individuels. Sur le papier, c'est magnifique. En pratique, c'est un exercice de contorsion intellectuelle où chaque personne passe 2 jours à reformuler la même chose à un niveau de zoom différent.

Camille te montre un exemple : l'objectif entreprise 'Améliorer la satisfaction client' devient au niveau squad 'Réduire le temps de réponse support', qui devient au niveau individuel pour Antoine 'Fermer 15 tickets par semaine'. Antoine ferme effectivement 15 tickets par semaine. En les marquant 'Won't Fix'. Techniquement, l'OKR est atteint."

git commit --allow-empty -m "OKRs : tu simplifies, enfin

Après deux trimestres de théâtre organisationnel, tu capitules. Tu passes de 847 OKRs individuels à 5 OKRs d'entreprise. Tu supprimes la review de 6 heures. Tu la remplaces par un check-in mensuel de 30 minutes. 'Et les OKRs individuels ?' demande Youssef, inquiet. 'On les supprime. Si quelqu'un veut se fixer des objectifs personnels, il n'a pas besoin d'un framework pour ça.'

Pierre, pour la première fois, te regarde avec quelque chose qui ressemble à du respect. 'Tu viens de découvrir que les gens savaient déjà ce qu'ils avaient à faire, ils avaient juste besoin qu'on les laisse le faire.' C'est la chose la plus longue qu'il t'ait jamais dite. Tu la notes dans ton Notion. Vieilles habitudes."

git checkout main

# ─────────────────────────────────────────────────────────────────────────────
# feature/tooling-obsession - Migration d'outils infinie
# ─────────────────────────────────────────────────────────────────────────────
git checkout -b feature/tooling-obsession $DIVERGE_TOOLING

git commit --allow-empty -m "Tooling : l'audit des outils existants

Tu lances un audit des outils. Résultat : la boîte utilise Trello (l'équipe produit), Asana (le marketing, par habitude), des Google Sheets (Sabrina), des post-its physiques (Antoine), un tableau blanc (Pierre), et un fichier Excel sur le bureau de quelqu'un qui s'appelle 'MASTER_PLAN_V2_FINAL_FINAL.xlsx'. Il y a aussi un compte Basecamp que personne ne se souvient avoir créé.

Tu décides de tout centraliser. Un outil pour les gouverner tous. Tu passes 3 semaines à comparer Jira, Linear, Monday, Notion, ClickUp, Shortcut et Wrike. Tu crées un spreadsheet de comparaison avec 47 critères. Tu le présentes en comité. Le comité vote pour Jira. Pierre vote contre tout."

git commit --allow-empty -m "Tooling : de Jira à Linear, le premier pivot

Jira dure 4 mois. Les gens détestent l'interface. Les tickets mettent 3 secondes à charger. Pierre refuse de l'utiliser, point. Tu découvres Linear : c'est rapide, c'est beau, c'est 'developer-friendly'. Tu proposes la migration. 'Encore ?' soupire Camille. 'C'est la dernière fois,' promets-tu. (Ce n'est pas la dernière fois.)

La migration prend 3 semaines. Tu perds 40% de l'historique des tickets. Antoine avait des notes importantes dans des commentaires Jira qui n'ont pas migré. Il ne te le pardonne pas. Sabrina refuse de changer et continue sur Google Sheets. Youssef migre ses tickets manuellement, un par un, en vérifiant chaque champ. Il met 2 semaines."

git commit --allow-empty -m "Tooling : de Linear à Monday à Notion... et retour

En 18 mois, tu as fait : Trello → Jira → Linear → Monday (le CEO d'un copain l'utilise) → Notion (tu voulais tout unifier) → retour à Trello parce que tout le monde avait encore son compte. Chaque migration coûte 3 semaines de productivité, 2 formations, et un peu de dignité.

La boîte est maintenant experte en un seul domaine : la migration d'outils de project management. C'est une compétence de niche, non monétisable, mais impressionnante sur un CV. Antoine a automatisé un script pour exporter ses tickets de n'importe quel outil vers n'importe quel autre. Il l'a appelé 'coo-proof.sh'. Tu fais semblant de ne pas avoir vu."

git commit --allow-empty -m "Tooling : le shadow IT qui prospère

Pendant que tu migres officiellement d'un outil à l'autre, un écosystème parallèle se développe. Pierre utilise un Trello personnel pour ses projets. Le marketing a créé un Airtable sans te le dire. L'équipe customer success fonctionne entièrement sur des Google Sheets partagés avec des formules qui feraient pleurer un ingénieur données.

Tu découvres qu'il y a 47 outils 'shadow IT' dans la boîte, soit le double des outils officiels. Antoine a même deployé un Kanban en ligne de commande sur le serveur de staging. Il l'a appelé 'FreedomBoard'. Il a 4 utilisateurs. C'est plus que Monday n'en a jamais eu dans la boîte."

git commit --allow-empty -m "Tooling : la sagesse vient (avec la facture)

Tu reçois la facture annuelle consolidée des outils SaaS : 187 000 euros. Pour 80 personnes. Il y a des licences actives pour des gens qui ont quitté la boîte il y a 18 mois. Il y a un abonnement Basecamp Premium que personne n'utilise. Il y a trois comptes Figma pour des développeurs qui n'ont jamais ouvert Figma.

Tu fais un grand ménage. Tu fermes 23 comptes SaaS. Tu économises 68 000 euros par an. Sabrina hausse un sourcil : 'J'avais envoyé un mail il y a 8 mois avec la liste exacte des outils à fermer. Personne n'a répondu.' Tu vérifies. Le mail existe. Il était dans le channel #operations que tu avais créé et que personne ne lit. L'ironie est parfaite."

git checkout main

# ─────────────────────────────────────────────────────────────────────────────
# feature/offboarding-onboarding - Process d'onboarding de 47 étapes
# ─────────────────────────────────────────────────────────────────────────────
git checkout -b feature/offboarding-onboarding $DIVERGE_ONBOARDING

git commit --allow-empty -m "Onboarding : tu crées le process parfait (sur papier)

Tu crées un process d'onboarding de 47 étapes. Jour 1 : welcome pack, tour des locaux, setup du laptop, accès aux outils (12 sous-étapes). Jour 2-5 : meetings avec chaque team lead. Semaine 2 : shadow sessions. Semaine 3 : premier projet guidé. Il y a un Notion template de 23 pages. Il y a un buddy system. Il y a un 'onboarding satisfaction survey' au jour 30.

Camille regarde le document : 'C'est très complet. Personne ne va le suivre, mais c'est très complet.' Tu insistes. Tu formes les managers. Tu crées des checklists. Tu automatises les mails de bienvenue. C'est un chef-d'oeuvre d'ingénierie organisationnelle. C'est aussi complètement déconnecté de la réalité."

git commit --allow-empty -m "Onboarding : le premier cobaye

Marine arrive. C'est une développeuse senior. Elle a 12 ans d'expérience. Elle a contribué au kernel Linux. Elle pourrait coder les yeux fermés. Ton process d'onboarding la traite comme si elle découvrait ce qu'est un ordinateur.

Étape 7 : 'Regarder la vidéo d'introduction à Git (45 minutes).' Marine a littéralement écrit des patches pour Git. Étape 14 : 'Meeting avec le CTO pour comprendre l'architecture.' Pierre annule le meeting 3 fois. Étape 23 : 'Quiz de validation des connaissances produit.' Marine met 3 semaines avant de pusher sa première ligne de code. Antoine la prend en pitié et lui donne accès à la prod en douce. 'Bienvenue dans la vraie boîte,' lui dit-il."

git commit --allow-empty -m "Onboarding : l'offboarding, le parent pauvre

Tu as passé 3 mois sur l'onboarding. Tu as complètement oublié l'offboarding. Quand quelqu'un part, c'est le chaos : accès pas révoqués, matériel pas récupéré, knowledge transfer inexistant. Un ancien développeur a encore accès à la prod 6 mois après son départ. Il corrige des bugs parfois, par nostalgie.

Tu crées un process d'offboarding en urgence. 32 étapes. Mais le mal est fait : il y a 14 comptes fantômes avec des accès admin, 3 laptops dans la nature, et un ancien stagiaire qui utilise encore la licence Spotify de la boîte. Sabrina avait un Google Sheet avec tout ça, évidemment. 'Tu aurais pu me demander,' dit-elle. Elle a raison. Elle a toujours raison."

git commit --allow-empty -m "Onboarding : le buddy system qui dérape

Le buddy system, c'est ton idée la plus populaire. Chaque nouveau est assigné à un 'buddy' qui l'accompagne pendant son premier mois. Le problème : tu n'as pas défini ce que fait un buddy. Certains prennent le rôle trop à coeur : ils accompagnent le nouveau aux toilettes, lui expliquent comment fonctionne la machine à café (3 fois), et lui envoient un Slack toutes les 30 minutes pour vérifier qu'il va bien.

Antoine est buddy de Marine. Sa méthode : 'Si t'as besoin de moi, viens me voir. Sinon, je suis là-bas.' Il pointe vers son bureau. Marine est productive dès le jour 2. Les autres nouveaux mettent 2 semaines avant que leur buddy arrête de les surveiller comme un hélicoptère parental."

git commit --allow-empty -m "Onboarding : le juste milieu

Tu révises le process. 47 étapes deviennent 12. Le quiz disparaît. La vidéo Git disparaît. Le buddy system reste (les gens aiment ça). Le Notion template passe de 23 pages à 2. Camille sourit : 'Maintenant c'est un vrai onboarding, pas un parcours du combattant.'

Marine, ta première victime, est devenue l'ambassadrice du nouveau process simplifié. 'Quand je suis arrivée, j'ai cru que j'avais rejoint une administration. Maintenant ça ressemble à une startup.' C'est le plus beau compliment qu'on t'ait fait. Tu l'ajoutes à ton Notion... puis tu te ravises. Certaines choses n'ont pas besoin d'être documentées."

git checkout main

# ─────────────────────────────────────────────────────────────────────────────
# feature/kpi-dashboard - Dashboard de KPIs à 15K/mois
# ─────────────────────────────────────────────────────────────────────────────
git checkout -b feature/kpi-dashboard $DIVERGE_KPI

git commit --allow-empty -m "KPIs : tu veux mesurer tout, absolument tout

Tu es convaincu : ce qui ne se mesure pas ne s'améliore pas. Peter Drucker l'a dit (en fait non, c'est un mythe, mais tu l'as lu sur LinkedIn donc c'est pareil). Tu lances un chantier KPIs. Tu veux un dashboard opérationnel qui montre tout en temps réel. Velocité des squads, lead time, cycle time, throughput, defect rate, MTTR, MTTD, deployment frequency, change failure rate.

Pierre te regarde : 'Tu veux qu'on instrumente toute la chaîne de delivery pour produire des graphiques que tu regarderas 5 minutes le lundi matin ?' Oui. C'est exactement ce que tu veux. C'est beau, les graphiques."

git commit --allow-empty -m "KPIs : 200 métriques et un Datadog à 15K par mois

Trois mois plus tard, tu as 200 métriques dans Datadog. Tu as des dashboards magnifiques. Il y a des courbes, des camemberts, des heat maps. C'est le plus beau PowerPoint vivant du monde. Le problème : ça coûte 15 000 euros par mois. Pour des graphiques.

Antoine a fait le calcul : 'On pourrait embaucher un dev junior à temps plein juste pour regarder les dashboards. Ça coûterait moins cher que Datadog.' Il n'a pas tort. Youssef, fidèle à lui-même, est le seul à consulter les dashboards quotidiennement. Il t'envoie des rapports que personne ne lit. Tu les archives dans un dossier Notion appelé 'KPI Reports' que personne ne consulte."

git commit --allow-empty -m "KPIs : la réunion hebdomadaire du dashboard

Tu instaures une 'KPI Review' hebdomadaire de 45 minutes. Tu projettes le dashboard sur le grand écran. Tu commentes chaque métrique. Tu poses des questions. Les gens regardent les courbes avec l'enthousiasme d'un public captif devant un PowerPoint sur les normes ISO.

Élodie t'interrompt à la 3ème réunion : 'Tu nous montres que la vélocité a baissé de 3%. On sait. On le vit. Montrer un graphique de ce qu'on vit ne change pas ce qu'on vit.' Antoine ajoute : 'C'est comme montrer la météo à quelqu'un qui est sous la pluie.' Pierre n'est pas venu. Il ne vient jamais. Mais il a envoyé un emoji parapluie dans le channel. C'est sa façon de participer."

git commit --allow-empty -m "KPIs : la métrique qui tue

Un jour, tu découvres une corrélation dans tes données : les jours où il y a le plus de réunions, la vélocité de développement est la plus basse. Tu es choqué. CHOQUÉ. Sabrina, qui passe derrière ton écran : 'Sans blague. Les gens qui passent leur journée en réunion ne codent pas. Incroyable découverte.'

Tu as dépensé 180 000 euros par an en outils de monitoring pour découvrir ce que n'importe qui aurait pu te dire gratuitement. Mais au moins, maintenant tu as un graphique. Et le graphique ne ment pas. Tu réduis le nombre de métriques de 200 à 15. Tu downgrades le plan Datadog. Tu économises 11 000 euros par mois. Le dashboard restant tient sur un seul écran. Pierre daigne le regarder une fois par semaine. C'est une victoire."

git checkout main

# ─────────────────────────────────────────────────────────────────────────────
# feature/incident-management - Process d'incidents pour un bug CSS
# ─────────────────────────────────────────────────────────────────────────────
git checkout -b feature/incident-management $DIVERGE_INCIDENT

git commit --allow-empty -m "Incidents : tu crées un process digne de la NASA

Tu crées un Incident Management Process. Il y a 5 niveaux de sévérité : SEV1 (catastrophe, la prod est morte), SEV2 (grave, fonctionnalité majeure KO), SEV3 (modéré), SEV4 (mineur), SEV5 (cosmétique). Chaque niveau a son propre playbook. SEV1 déclenche une war room, un incident commander, un communications lead, et un post-mortem obligatoire dans les 48h.

Tu as tout documenté dans Confluence (où personne n'ira le lire). Tu as créé un channel Slack #incidents avec des bots de notification. Tu as même acheté une sirène USB connectée qui hurle quand un SEV1 est déclaré. Pierre la débranche le premier jour. Il la rebranche le deuxième jour parce qu'il a trouvé comment la reprogrammer pour jouer 'Highway to Hell' d'AC/DC."

git commit --allow-empty -m "Incidents : le premier SEV1 (un bouton décalé de 3 pixels)

Ton premier incident déclaré est un SEV1 : 'Le bouton d'achat est décalé de 3 pixels sur Safari mobile.' Le commercial qui l'a signalé a paniqué et a coché SEV1 parce que 'ça bloque les ventes'. La war room se réunit. L'incident commander (toi) active le process. Le communications lead envoie un mail au board : 'Incident critique en cours.'

Antoine fix le CSS en 47 secondes. Le post-mortem dure 2 heures. Tu produis un document de 8 pages avec root cause analysis, timeline, action items. L'action item principal : 'former les commerciaux à la classification des incidents.' Pierre commente sur Slack : 'Ou alors, on pourrait juste laisser les devs fixer les bugs sans transformer chaque pixel en crise nucléaire.' Il n'a pas tort."

git commit --allow-empty -m "Incidents : le post-mortem du post-mortem

Tu instaures une culture du post-mortem blameless. L'idée est noble : on ne blâme personne, on améliore le système. En pratique, ça donne des réunions de 2 heures où tout le monde dit 'c'est pas ma faute' de manière très polie et constructive.

Après 3 mois, tu as 23 post-mortems. Chacun génère 5-8 action items. Total : 147 action items. Nombre d'action items complétés : 12. Et les 12, c'est Youssef qui les a faits. Les autres sont dans un backlog Jira que personne ne priorise. Tu crées un comité mensuel pour reviewer les action items de post-mortem. C'est un comité pour suivre les actions issues des réunions qui suivent les incidents. Tu ne vois toujours pas le problème."

git commit --allow-empty -m "Incidents : la war room permanente

Tu as créé une war room permanente sur Zoom. Un call qui tourne 24/7 'au cas où'. Personne n'y va sauf Youssef qui laisse son micro ouvert par erreur une nuit et tout le monde entend son chat miauler à 3h du matin. La facture Zoom pour le call permanent : 89 euros par mois. Le chat de Youssef est devenu la mascotte non officielle de l'équipe incident.

Pierre propose une alternative : un channel Slack #incident-active qui n'est utilisé qu'en cas de vrai problème. Pas de call permanent. Pas de sirène. Juste un message, un thread, une résolution. C'est tellement simple que tu te demandes pourquoi tu n'y as pas pensé. La réponse : parce que simple n'a jamais été ton mode par défaut."

git commit --allow-empty -m "Incidents : la sagesse opérationnelle

Tu simplifies. SEV1 et SEV2 : process complet avec war room et post-mortem. SEV3-5 : le dev fix, on passe à autre chose. Tu supprimes la sirène USB (Pierre proteste, il s'était attaché à 'Highway to Hell'). Tu réduis les post-mortems à 30 minutes max avec un template d'une page.

Le nombre d'incidents déclarés augmente de 300%. C'est une bonne chose : avant, les gens ne déclaraient pas les incidents parce que le process était trop lourd. Maintenant ils les déclarent, on les fixe, on avance. Antoine dit : 'C'est presque comme du bon sens.' Tu décides de prendre ça comme un compliment."

git checkout main

# ─────────────────────────────────────────────────────────────────────────────
# feature/change-management - Change management méta
# ─────────────────────────────────────────────────────────────────────────────
git checkout -b feature/change-management $DIVERGE_CHANGE

git commit --allow-empty -m "Change Management : tu veux changer la façon de changer

Tu réalises que le problème n'est pas les process, c'est la gestion du changement. Tu as lu 'Leading Change' de Kotter. Les 8 étapes. Tu les connais par coeur. Tu crées un programme de Change Management pour accompagner la transformation. C'est un programme pour changer la façon dont les gens changent. La méta-ité de la chose ne te frappe pas.

Tu embauches une consultante en change management. Elle s'appelle Nathalie. Elle a un deck de 120 slides intitulé 'Navigating Organizational Transformation in the Digital Age'. Le premier slide dit 'People don't resist change, they resist being changed.' C'est profond. Personne ne comprend la nuance."

git commit --allow-empty -m "Change Management : les ambassadeurs du changement

Nathalie propose de créer un réseau d'ambassadeurs du changement : des volontaires qui vont porter la transformation au sein de leurs équipes. Elle appelle ça le 'Change Champions Network'. Tu recrutes 12 ambassadeurs. Antoine est volontaire, ce qui te surprend. Tu découvres plus tard qu'il s'est porté volontaire pour saboter le programme de l'intérieur. Le respect que tu as pour son engagement est sincère.

Les ambassadeurs suivent une formation de 2 jours. Ils apprennent les courbes de Kübler-Ross appliquées au changement organisationnel. Ils apprennent à 'créer un sentiment d'urgence' et à 'former des coalitions'. Sabrina refuse d'être ambassadrice : 'Je n'ai pas besoin d'une formation pour dire aux gens de faire leur travail correctement.' Touché."

git commit --allow-empty -m "Change Management : le changement qui change le changement

Nathalie propose de changer le programme de change management parce que les résultats ne sont pas au rendez-vous. Tu vas changer la façon de changer le changement. Tu es à trois niveaux de méta. Tu commences à avoir le vertige.

Camille intervient : 'On a dépensé 45 000 euros en consulting pour apprendre aux gens à accepter le changement. Pendant ce temps, les gens ont changé tout seuls : ils ont trouvé des workarounds pour contourner chaque process qui ne marchait pas. Le changement se fait. Juste pas celui qu'on avait prévu.' Nathalie note ça dans son deck. 'C'est un excellent insight pour ma prochaine mission,' dit-elle. Tu la raccompagnes à la porte."

git commit --allow-empty -m "Change Management : l'épitaphe du programme

Trois mois après le départ de Nathalie, tu retrouves son deck de 120 slides dans un dossier partagé. Tu l'ouvres par curiosité. Slide 47 : 'Key Success Factor: Executive Sponsorship and Grassroots Engagement.' Tu traduis mentalement : 'il faut que le chef y croie et que les gens suivent.' 120 slides pour ça.

Tu crées un dernier document intitulé 'Ce qu'on a appris sur le change management'. Il tient en une phrase : 'Le meilleur change management, c'est de faire des choses qui marchent. Les gens adoptent ce qui les aide. Ils contournent le reste. Fin du programme.' Sabrina applaudit. C'est la première fois qu'elle applaudit quelque chose que tu as écrit."

git checkout main

# ─────────────────────────────────────────────────────────────────────────────
# feature/automatisation-totale - 400 Zaps, personne ne debug
# ─────────────────────────────────────────────────────────────────────────────
git checkout -b feature/automatisation-totale $DIVERGE_AUTOMATISATION

git commit --allow-empty -m "Automatisation : tu découvres Zapier et Make

Tu découvres le no-code automation. Zapier, Make (ex-Integromat), n8n. Tu es ébloui. Tout peut être automatisé ! Tu commences doucement : quand un deal est gagné dans le CRM, un message Slack est envoyé. Quand un ticket Jira est créé, une ligne apparaît dans un Google Sheet. C'est magique.

Tu passes tes soirées à créer des zaps. C'est comme les Lego mais pour adultes. Ta femme te demande ce que tu fais. 'Je connecte le webhook du formulaire Typeform au Google Sheet via Zapier qui trigger un Slack bot qui notifie le Jira via l'API.' Elle acquiesce poliment et retourne regarder sa série."

git commit --allow-empty -m "Automatisation : 400 zaps et la tour de Babel digitale

Trois mois plus tard : 400 zaps en production. Des automatisations dans tous les sens. Quand un client envoie un mail, ça trigger 7 workflows différents. Quand quelqu'un est embauché, 23 automatisations se déclenchent simultanément, dont une qui envoie un message de bienvenue avec le mauvais prénom parce que le champ est mal mappé.

Pierre regarde l'architecture : 'Tu as créé un système distribué asynchrone sans monitoring, sans tests, sans documentation, et sans personne qui comprend comment ça marche. Bravo, tu as réinventé le legacy code mais en no-code.' Le compliment est empoisonné. Tu le mérites."

git commit --allow-empty -m "Automatisation : le jour où tout bug en même temps

Un mardi à 14h, Zapier a une panne de 2 heures. Pendant ces 2 heures, plus rien ne fonctionne. Les clients ne reçoivent plus de réponses automatiques. Les tickets ne se créent plus. Les notifications Slack sont mortes. Les Google Sheets ne se mettent plus à jour. C'est comme si la boîte avait subi un AVC digital.

Sabrina, imperturbable, sort son téléphone et gère tout manuellement. 'C'est ce que je faisais avant tes 400 robots,' dit-elle. Tu réalises que tu as créé une dépendance critique sur un outil tiers pour des tâches que des humains pouvaient faire en 5 minutes. Tu as automatisé 400 tâches. 350 d'entre elles n'avaient pas besoin d'être automatisées."

git commit --allow-empty -m "Automatisation : le debugging impossible

Un zap bug. Tu ne sais pas lequel. Un des 400. Le symptôme : les clients reçoivent des mails de relance pour des factures déjà payées. Le commercial panique. Tu ouvres Zapier. Tu vois 400 workflows interconnectés. C'est un plat de spaghettis digital. Tu ne sais pas par où commencer.

Pierre regarde par-dessus ton épaule : 'Tu as créé un système distribué sans observabilité. En production. Avec les données clients. Bravo.' Il n'est pas ironique. Enfin si, il est ironique, mais il a aussi une pointe de respect pour la catastrophe que tu as réussi à créer avec des outils no-code. Sabrina désactive les mails manuellement pendant que tu cherches le bug. Elle le trouve avant toi. C'était le zap numéro 247."

git commit --allow-empty -m "Automatisation : le ménage de printemps digital

Tu fais le tri. Tu gardes 50 automatisations sur 400. Les 50 qui font gagner vraiment du temps : notifications de paiement, synchro CRM, alertes monitoring. Tu supprimes les 350 autres, dont : un zap qui convertit automatiquement les emojis Slack en tickets Jira (erreur de configuration jamais corrigée), un workflow qui envoie un 'Joyeux anniversaire' aux clients avec la date de création du compte (pas leur anniversaire), et un trigger qui crée un post-mortem à chaque déploiement, même les réussis.

Antoine te félicite : 'C'est le premier truc que tu supprimes au lieu de l'ajouter. L'élève dépasse le maître.' Tu ne sais pas si c'est un compliment. Tu décides que oui."

git checkout main

# ─────────────────────────────────────────────────────────────────────────────
# hotfix/production-arretee - La prod tombe, le process prend 45min
# ─────────────────────────────────────────────────────────────────────────────
git checkout -b hotfix/production-arretee $DIVERGE_HOTFIX_PROD

git commit --allow-empty -m "HOTFIX : la prod est down, le process s'active

Vendredi 17h42. L'alerte PagerDuty sonne. Le site est down. Le vrai down. 500 Internal Server Error. Les clients appellent. Le commercial panique. Le board est en copie d'un mail. C'est un SEV1.

Tu actives le process. Étape 1 : déclarer l'incident dans le channel #incidents. Étape 2 : assigner un incident commander. Étape 3 : créer un war room (un call Zoom). Étape 4 : inviter les parties prenantes. Étape 5 : évaluer l'impact. Tu en es à l'étape 5, 25 minutes sont passées. Le site est toujours down. Pierre est dans le war room mais il a coupé son micro parce que 'le bruit le déconcentre pour fixer le bug'."

git commit --allow-empty -m "HOTFIX : Pierre fix en 3 minutes, le process continue

Pierre : 'C'est fixé. Un certificat SSL expiré. J'ai renouvelé.' Temps de fix : 3 minutes. Temps de process : 45 minutes et ce n'est pas fini. Parce que maintenant il faut : mettre à jour le status page, envoyer un mail post-incident aux clients, remplir le rapport d'incident, planifier le post-mortem, et créer les action items.

Tu passes le week-end à rédiger le post-mortem. Root cause : certificat expiré. Pourquoi : personne n'avait configuré le renouvellement automatique. Pourquoi : parce que le process de configuration des certificats n'existait pas. Conclusion : tu crées un process pour les certificats. Pierre l'ignore et configure un cron job en 30 secondes. Le process de 3 pages reste dans Confluence. Le cron job tourne en production. La réalité gagne toujours."

git commit --allow-empty -m "HOTFIX : la leçon (que tu mets du temps à apprendre)

Élodie te convoque le lundi. 'Le site était down pendant 48 minutes. 45 de ces minutes, c'est ton process. 3 minutes, c'est Pierre qui fixe. Tu vois le problème ?' Tu vois le problème. Tu ne veux pas voir le problème. Ton cerveau McKinsey cherche comment justifier le process. Tu trouves : 'Le process assure la traçabilité et—' Élodie : 'Les clients s'en foutent de la traçabilité. Ils veulent que ça marche.'

Tu rentres chez toi. Tu regardes ton process d'incident management. 47 étapes pour un SEV1. Tu en gardes 5 : alerter, fixer, communiquer, documenter en 1 page, une action corrective. Le reste, c'est du théâtre opérationnel pour rassurer des gens qui n'ont pas besoin d'être rassurés."

git commit --allow-empty -m "HOTFIX : le deuxième incident, la rédemption

Deux semaines plus tard, la prod tombe à nouveau. Cette fois, un pic de trafic imprévu. L'alerte sonne. Pierre diagnostique en 2 minutes. Antoine scale l'infra en 5. Tu envoies un message au client en 3 minutes. Total : 10 minutes de downtime. Le post-mortem tient en un paragraphe.

Élodie te regarde avec un demi-sourire : 'Tu vois ? Quand le process ne ralentit pas les gens, les gens sont rapides.' Tu acquiesces. Tu es en train de comprendre quelque chose que Sabrina sait depuis toujours : l'urgence ne se gère pas avec un flowchart. Elle se gère avec des gens compétents qu'on laisse faire leur travail."

git checkout main

# ─────────────────────────────────────────────────────────────────────────────
# hotfix/demission-en-serie - 5 démissions en un mois
# ─────────────────────────────────────────────────────────────────────────────
git checkout -b hotfix/demission-en-serie $DIVERGE_HOTFIX_DEMISSION

git commit --allow-empty -m "HOTFIX : première démission - tu ne vois pas le signal

Mathieu, développeur backend, démissionne. Il est là depuis le début. Dans son exit interview (un process que tu as implémenté, pour une fois c'est utile), il dit : 'J'aimais cette boîte quand on pouvait juste coder et livrer. Maintenant je passe 3 heures par jour en réunions et 2 heures sur Jira pour 3 heures de code. Je suis développeur, pas gestionnaire de tickets.'

Tu notes le feedback. Tu le classes dans la catégorie 'résistance au changement, phase normale de transformation'. Camille te regarde avec cet air qu'elle a de plus en plus souvent : celui de quelqu'un qui voit le mur arriver et qui sait que tu ne freineras pas."

git commit --allow-empty -m "HOTFIX : trois démissions en deux semaines

Deux semaines plus tard, trois autres développeurs démissionnent. Même feedback : trop de process, plus de fun, l'impression de travailler dans une ESN et pas une startup. Antoine pose un ultimatum : 'Soit tu allèges les trucs, soit je suis le suivant, et je suis le seul à comprendre le moteur de recommandation.'

Élodie est furieuse. Pas contre les démissionnaires. Contre toi. 'Chaque développeur qui part coûte entre 50K et 100K de recrutement et 6 mois de ramp-up. Tu as créé 23 process qui coûtent plus cher en turnover que ce que le chaos coûtait en inefficacité.' Les maths ne mentent pas. Ton tableur Excel de ROI des process n'avait pas de colonne 'démissions induites'."

git commit --allow-empty -m "HOTFIX : la cinquième démission, celle qui fait mal

Sabrina dépose sa démission. Le silence dans la boîte est nucléaire. Sabrina, c'est les fondations. Sabrina, c'est la personne qui sait où sont les contrats, comment fonctionne la compta, quels clients appellent le mardi, et pourquoi le serveur de staging bug le jeudi. Sabrina, c'est la matrice RACI à elle toute seule.

Tu paniques. Tu vas la voir. 'C'est à cause des process ?' Elle sourit : 'Non. C'est parce que tu m'as ajouté à 8 comités, 12 channels Slack, et 4 réunions hebdomadaires pour me demander des choses que je faisais déjà toute seule. Tu as transformé mon travail efficace en travail documenté. C'est pas pareil.' Tu lui proposes le titre de Chief of Staff, une augmentation, et la suppression de tous les comités. Elle accepte de rester. Tu respires."

git commit --allow-empty -m "HOTFIX : le plan de rétention d'urgence

Tu crées un plan de rétention en urgence. Mais cette fois, tu ne crées pas un process. Tu fais l'inverse : tu demandes à chaque personne ce qui l'empêche de bien travailler et tu supprimes cet obstacle. Un par un. Camille t'aide. C'est le projet le plus utile que tu aies lancé depuis ton arrivée.

En deux semaines, tu supprimes 4 réunions hebdomadaires, tu allèges 3 workflows Jira, tu donnes l'autonomie de déploiement à 2 équipes qui la réclamaient depuis des mois. Antoine retire sa lettre de démission (il en avait une pré-remplie dans son tiroir, 'par principe'). Le turnover s'arrête. Pas grâce à un programme de rétention. Grâce au fait d'avoir écouté et agi. Sabrina te dit : 'Bienvenue dans le monde réel.' Tu lui offres un café."

git checkout main

# ─────────────────────────────────────────────────────────────────────────────
# hotfix/client-furieux - Client bloqué dans un workflow
# ─────────────────────────────────────────────────────────────────────────────
git checkout -b hotfix/client-furieux $DIVERGE_HOTFIX_CLIENT

git commit --allow-empty -m "HOTFIX : un client attend 3 semaines une réponse

Tu reçois un appel d'Élodie. Sa voix est calme. Trop calme. 'Notre plus gros client, 30% du CA, attend une réponse depuis 3 semaines. Sais-tu pourquoi ?' Tu ne sais pas. Tu vas chercher. La demande du client est entrée dans le workflow de support : ticket Jira, triage, assignation, analyse, proposition, validation technique, validation commerciale, validation juridique, réponse.

La demande est bloquée à l'étape 'validation juridique'. Le juridique, c'est un avocat externe qui vient un jour par semaine. Il est en vacances depuis 2 semaines. Personne n'a de solution de backup. Ton workflow ne prévoit pas l'absence. Ton workflow est parfait dans un monde où personne n'est jamais malade, en vacances, ou simplement occupé."

git commit --allow-empty -m "HOTFIX : le client menace de partir

Le client appelle directement Élodie : 'Je vais pas attendre un mois pour une réponse à une question technique. Avant, j'appelais Pierre, il répondait en 10 minutes.' Élodie appelle Pierre. Pierre répond en 10 minutes. Le problème technique est résolu. Le problème de confiance, non.

Tu réalises que ton workflow d'approbation a ajouté 3 semaines de délai à quelque chose qui prenait 10 minutes. Tu as optimisé le process au détriment du résultat. C'est comme construire une autoroute à 14 péages entre deux villes distantes de 2 kilomètres. On peut la prendre. Ou on peut marcher. La marche est plus rapide."

git commit --allow-empty -m "HOTFIX : tu crées un fast-track (enfin)

Tu crées un 'fast-track' pour les demandes critiques : les clients stratégiques ont un accès direct aux experts techniques. Pas de workflow. Pas de 8 étapes. Un Slack, une réponse. Comme avant, mais documenté.

Antoine : 'Donc tu as passé 6 mois à créer un process complexe, pour ensuite créer une exception qui contourne le process, et cette exception... c'est exactement ce qu'on faisait avant ?' Tu ouvres la bouche. Tu la refermes. Tu acquiesces. 'Oui. Mais maintenant on a une trace écrite.' Pierre, depuis son bureau : 'La trace écrite de quoi ? De notre capacité à créer des problèmes pour les résoudre ?' Tu n'as pas de répartie. Tu vas prendre un café."

git commit --allow-empty -m "HOTFIX : les excuses au client (et le NPS qui remonte)

Tu appelles le client personnellement. Pas un mail. Pas un ticket. Un appel. Tu t'excuses. Tu expliques ce qui s'est passé. Tu ne dis pas 'notre workflow d'approbation' parce que le client s'en fout de ton workflow. Tu dis : 'On a merdé. On a été trop lents. Ça n'arrivera plus.' Le client apprécie l'honnêteté.

Tu instaures une règle simple : toute demande client sans réponse depuis plus de 48h remonte automatiquement à toi. Pas via un workflow Jira. Via un Slack de Sabrina qui te dit 'Hé, le client X attend depuis 3 jours.' C'est moins élégant qu'un dashboard Datadog. C'est infiniment plus efficace. Sabrina est ton meilleur process. Tu ne le dis pas à haute voix parce qu'elle déteste le mot 'process'."

git checkout main

# ─────────────────────────────────────────────────────────────────────────────
# fix/lean-ops - Le COO découvre le lean
# ─────────────────────────────────────────────────────────────────────────────
git checkout -b fix/lean-ops $DIVERGE_FIX_LEAN

git commit --allow-empty -m "Lean Ops : l'illumination (ou le désespoir, c'est pareil)

Tu lis 'The Toyota Way'. Tu lis 'Lean Startup'. Tu lis 'The Phoenix Project'. Tu as une illumination : le lean, c'est l'anti-McKinsey. Pas plus de process, mais moins de gaspillage. Pas plus de documentation, mais plus de valeur. Tu as passé 6 mois à ajouter. Il est temps de soustraire.

Tu imprimes la liste de tous les process que tu as créés. 23 process. Tu prends un marqueur rouge. Pour chaque process, tu poses une question simple : 'Si on le supprime demain, que se passe-t-il de grave ?' Pour 15 d'entre eux, la réponse est 'rien'. Tu sens un mélange de honte et de libération."

git commit --allow-empty -m "Lean Ops : le grand ménage

Tu supprimes 15 process en une semaine. Tu simplifies les 8 restants. Le workflow Jira passe de 14 étapes à 4 : To Do, In Progress, Review, Done. Les réunions hebdomadaires passent de 7 à 2. Les comités passent de 5 à 1. La matrice RACI est remplacée par un document d'une page : 'Qui fait quoi'.

Les gens respirent. Littéralement. Antoine vient te voir : 'OK, je retire 40% de ce que j'ai dit sur toi.' Tu prends ça comme un compliment massif. Pierre repousse une feature qui traînait depuis 3 mois en une semaine. 'J'avais le temps maintenant que je n'ai plus 6 heures de réunion,' explique-t-il."

git commit --allow-empty -m "Lean Ops : le kaizen au quotidien

Tu instaures un rituel simple : chaque vendredi, 15 minutes, chaque équipe identifie un truc qui les ralentit et le supprime. Pas un comité. Pas un framework. Juste : quel est le problème ? Quelle est la solution la plus simple ? On la met en place. Maintenant.

Sabrina adore : 'C'est ce que je fais depuis 3 ans, mais maintenant ça a un nom japonais, donc c'est légitime.' Youssef documente chaque amélioration (évidemment). Pierre participe (de son bureau, par Slack, mais il participe). En 2 mois, l'équipe a identifié et résolu 47 irritants du quotidien. Pas besoin de 84 slides. Juste du bon sens en itération."

git commit --allow-empty -m "Lean Ops : la documentation qui sert vraiment

Tu repenses la documentation. Plus de Confluence cathedral de 500 pages que personne ne lit. À la place : des 'runbooks' d'une page max pour chaque process critique. Comment déployer. Comment gérer un incident. Comment onboarder. Chaque runbook répond à une seule question : 'Si tu te retrouves à 3h du matin face à ce problème, que fais-tu ?'

Youssef est aux anges. Pour la première fois, ses efforts de documentation sont utiles parce que les documents sont courts et pratiques. Pierre contribue un runbook sur le déploiement. C'est le premier document qu'il écrit en 4 ans. Il fait 8 lignes. C'est parfait. Antoine ajoute un commentaire : 'TL;DR: git push et prie.' Pierre ne le supprime pas. C'est sa façon d'approuver."

git commit --allow-empty -m "Lean Ops : les gens respirent à nouveau

Les résultats sont là. Le time-to-market est repassé de 6 semaines à 3. Le NPS employé remonte de 31 à 64. Les démissions s'arrêtent. Marine (la dev qui avait subi ton onboarding de 47 étapes) dit : 'J'ai failli partir le premier mois. Content d'être restée.'

Tu regardes l'open space. C'est bruyant. Les gens discutent, rigolent, débattent. Antoine et Pierre se disputent sur une architecture technique devant un tableau blanc. Camille organise un afterwork. Sabrina gère trois trucs en parallèle avec son efficacité terrifiante. C'est le chaos. Mais c'est un chaos vivant, organisé juste assez pour fonctionner. Tu souris. Tu as enfin compris."

git checkout main

# ─────────────────────────────────────────────────────────────────────────────
# fix/retour-consulting - Le COO repart chez McKinsey
# ─────────────────────────────────────────────────────────────────────────────
git checkout -b fix/retour-consulting $DIVERGE_FIX_RETOUR

git commit --allow-empty -m "Retour consulting : l'appel de McKinsey

Tu reçois un appel de ton ancien partner. McKinsey lance une practice 'Operational Excellence for Scale-ups'. Ils ont besoin de quelqu'un qui a 'vécu le terrain'. Le salaire est le double. Les clients paient pour tes frameworks au lieu de te résister. Le prestige est intact. Les costards sont remboursés.

Tu regardes autour de toi. L'open space. Le mug ébréché. Le Jira à 4 colonnes. Le post-it sur ton écran. Tu penses à Sabrina qui gère tout. À Pierre qui t'a dit 'ça va' (sa déclaration d'amour). À Antoine qui ne te déteste plus que modérément. À Camille qui t'a appris la patience. Tu penses au chaos. Au beau chaos."

git commit --allow-empty -m "Retour consulting : les adieux

Tu acceptes l'offre. Tu annonces ton départ en all-hands. Le silence est différent de celui de ton premier jour. Ce silence-là a du poids. Des gens sont tristes. Même Antoine semble... pas triste, mais légèrement moins hostile. Ce qui est sa version de l'effondrement émotionnel.

Sabrina te prend à part : 'Tu es arrivé insupportable. Tu es devenu correct. C'est dommage que tu partes maintenant que tu commences à comprendre.' Tu as une boule dans la gorge. Tu retournes dans ton bureau. Tu enlèves le post-it de ton écran. Tu le mets dans ta poche. 'Les process sont des outils, pas des fins.' Tu l'emporteras chez McKinsey. Ils en ont besoin."

git commit --allow-empty -m "Retour consulting : la lettre d'Élodie

Le dernier jour, Élodie te donne une carte signée par toute l'équipe. Même Pierre a signé (un 'P.' minuscule dans le coin). À l'intérieur : 'Tu nous as appris qu'on avait besoin de structure. On t'a appris qu'on avait besoin d'humanité. Match nul.'

Tu montes dans le taxi vers l'aéroport. Tu vas à Londres pour ta première mission McKinsey 2.0. Le sujet : 'Implémenter un framework de gouvernance opérationnelle dans une scale-up de 200 personnes.' Tu ouvres le deck client. 84 slides. Tu fermes le deck. Tu ouvres un doc vide. Tu écris : 'Étape 1 : parler aux gens. Comprendre ce qui marche déjà. Ne pas tout casser.' Sabrina serait fière."

git commit --allow-empty -m "Retour consulting : le SMS de Sabrina, 6 mois plus tard

Six mois après ton départ, tu reçois un SMS de Sabrina. 'La boîte tourne. Le nouveau COO est arrivé. Il a essayé de créer une matrice RACI le premier jour. Je lui ai donné ton numéro en lui disant d'appeler. Il a appelé. Tu lui as dit quoi ?' Tu souris. Tu lui as dit exactement ce que Sabrina t'aurait dit : 'Avant de créer quoi que ce soit, prends un café avec chaque personne. Et quand une femme qui s'appelle Sabrina te dit quelque chose, écoute.'

Le nouveau COO a écouté. La boîte va bien. Tu as créé un anti-pattern qui est devenu un pattern. Tu es fier. Tu ranges ton téléphone. Tu ouvres ton deck client McKinsey. 120 slides. Tu en supprimes 100. Tu gardes les 20 qui comptent. Sabrina serait fière. Tu lui envoies un emoji pouce. Elle répond : 'Pas d'emoji au travail, c'est dans le handbook.' Il n'y a pas de handbook. C'est sa façon de dire qu'elle t'aime bien."

git checkout main

# ─────────────────────────────────────────────────────────────────────────────
# fix/coo-humain - Transformation réussie
# ─────────────────────────────────────────────────────────────────────────────
git checkout -b fix/coo-humain $DIVERGE_FIX_LEAN

git commit --allow-empty -m "COO humain : tu écoutes (enfin)

Au lieu de créer un nouveau framework, tu fais un truc radical : tu écoutes. Tu passes une semaine à prendre un café avec chaque personne de la boîte. Pas de Google Form. Pas de template. Pas d'agenda. Juste : 'C'est quoi ton plus gros irritant au quotidien ?'

Les réponses sont simples. Les réunions inutiles. Les validations absurdes. Les outils qui changent tout le temps. Le manque de confiance. Sabrina résume : 'Les gens savent ce qu'ils ont à faire. Ils ont juste besoin qu'on leur foute la paix et qu'on soit là quand ils ont un vrai problème.' Tu n'ouvres pas Notion. Tu écoutes. Vraiment."

git commit --allow-empty -m "COO humain : les process qui servent les gens

Tu reconstruis de zéro. Mais cette fois, chaque process commence par la question : 'Ça aide qui ?' Si la réponse est 'le management' ou 'les auditeurs', tu jettes. Si la réponse est 'les gens qui font le travail', tu gardes.

Résultat : 5 process clairs, simples, que les gens utilisent parce qu'ils leur facilitent la vie. Un onboarding de 3 jours (pas 3 semaines). Un incident management de 5 étapes (pas 47). Un workflow de 3 colonnes (pas 14). Un cycle de feedback trimestriel (pas des OKRs à 847 objectifs). Et un rituel hebdomadaire de 15 minutes pour améliorer les choses ensemble."

git commit --allow-empty -m "COO humain : Pierre te parle (c'est un miracle)

Pierre vient te voir un mardi matin. Il s'assoit. Il enlève son casque. Il parle : 'J'ai été dev dans 4 boîtes. Chaque fois, un consultant arrive et casse tout. Toi, tu as cassé tout, et puis tu as recollé les morceaux. C'est la première fois que quelqu'un fait ça. Merci.'

Tu ne dis rien pendant 10 secondes. C'est la conversation la plus longue que Pierre a eue avec un non-développeur depuis 2018. Tu dis : 'Merci de pas avoir démissionné pendant la phase où j'étais insupportable.' Il remet son casque : 'J'ai failli. Trois fois. Sabrina m'a convaincu de rester.' Évidemment. Sabrina, toujours."

git commit --allow-empty -m "COO humain : la transformation réussie

Un an après ton arrivée, les chiffres : time-to-market à 2 semaines (comme avant, mais maintenant c'est viable à 150 personnes). NPS employé à 78 (record). Zero démission non voulue au dernier trimestre. Revenue en hausse de 40%. Et surtout : les gens sont heureux. Pas le heureux corporate des affiches dans l'ascenseur. Le vrai heureux.

Élodie te prend à part : 'Tu sais ce que tu as fait de bien ? Tu as compris que ton job c'est pas de faire des process. C'est de faire en sorte que les gens puissent faire leur meilleur travail. Parfois ça demande un process. Parfois ça demande de supprimer un process. Le talent, c'est de savoir quand faire quoi.' Tu imprimes la citation. Pas dans Notion. Sur un post-it. Sur ton écran. Pour ne jamais oublier."

git commit --allow-empty -m "COO humain : l'épilogue heureux

Deux ans plus tard. La boîte a 200 personnes. Les process tiennent. Pas parce qu'ils sont nombreux, mais parce qu'ils sont justes. Tu as embauché un ops manager pour t'aider. Tu lui as donné un seul conseil : 'Parle aux gens avant de créer quoi que ce soit. Et quand Sabrina te dit quelque chose, écoute.'

Antoine a quitté la boîte. Pour monter sa propre startup. Il t'a envoyé un message le premier jour : 'J'ai besoin d'un COO. Tu connais quelqu'un ?' Tu as ri. Puis tu l'as rappelé. Tu lui as dit : 'Engage Sabrina.' Il a ri. Sabrina a refusé. Elle est irremplaçable là où elle est. Et elle le sait."

git checkout main

echo ""
echo "============================================="
echo "  Livre généré avec succès !"
echo "============================================="
echo ""
echo "Statistiques :"
echo "--------------"
TOTAL_COMMITS=$(git log --all --oneline | wc -l)
MAIN_COMMITS=$(git log main --oneline | wc -l)
BRANCHES=$(git branch | wc -l)
echo "  Commits totaux  : $TOTAL_COMMITS"
echo "  Commits sur main: $MAIN_COMMITS"
echo "  Branches         : $BRANCHES"
echo ""
echo "Branches :"
git branch -a
echo ""
echo "Arbre des commits (main) :"
git log --oneline main
echo ""
echo "Arbre complet :"
git log --all --oneline --graph --decorate
