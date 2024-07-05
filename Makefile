# Définir les variables
GRADLEW = ./gradlew
PROJECT_NAME = Gingerstrock

# Cibles par défaut
.PHONY: all clean build test run

all: build

# Nettoyer le projet
clean:
	$(GRADLEW) clean

# Construire le projet
build:
	$(GRADLEW) build

# Exécuter les tests
test:
	$(GRADLEW) test

# Lancer l'application
run:
	$(GRADLEW) bootRun

# Mettre à jour les dépendances
dependencies:
	$(GRADLEW) dependencies

# Mettre à jour les dépendances (refresh versions)
refresh-dependencies:
	$(GRADLEW) --refresh-dependencies

# Générer les javadocs
javadoc:
	$(GRADLEW) javadoc

# Mettre à jour les dépendances du wrapper Gradle
wrapper:
	$(GRADLEW) wrapper --gradle-version=7.6.1

# Afficher les tâches disponibles
tasks:
	$(GRADLEW) tasks
