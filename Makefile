# Nom du fichier Java sans l'extension
MAIN_CLASS = Main

# Compilateur Java
JAVAC = javac

# Interpréteur Java
JAVA = java

# Dossier source
SRC_DIR = src

# Les fichiers sources
SOURCES = $(SRC_DIR)/$(MAIN_CLASS).java

# Les fichiers compilés
CLASSES = $(SOURCES:.java=.class)

# La règle par défaut
all: $(CLASSES)

# Règle pour compiler les fichiers .java en .class
$(SRC_DIR)/%.class: $(SRC_DIR)/%.java
	$(JAVAC) -d $(SRC_DIR) $<

# Règle pour exécuter le programme
run: all
	$(JAVA) -cp $(SRC_DIR) $(MAIN_CLASS)

# Règle pour nettoyer les fichiers compilés
clean:
	rm -f $(SRC_DIR)/*.class

.PHONY: all run clean
