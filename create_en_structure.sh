#!/bin/bash

SOURCE_DIR="docs/pl"
TARGET_DIR="docs/en"

# Tworzymy główny katalog en, jeśli nie istnieje
mkdir -p "$TARGET_DIR"

# Znajdujemy wszystkie pliki .md w katalogu polskim
find "$SOURCE_DIR" -name "*.md" | while read source_file; do
    # 1. Ustalanie ścieżki docelowej
    # Zamieniamy 'docs/pl' na 'docs/en' w ścieżce
    target_file="${source_file/$SOURCE_DIR/$TARGET_DIR}"
    
    # 2. Tworzenie katalogu docelowego, jeśli nie istnieje
    target_dir=$(dirname "$target_file")
    mkdir -p "$target_dir"
    
    # 3. Wyciąganie nazwy do nagłówka (dla estetyki)
    filename=$(basename "$target_file" .md)
    # Usuwamy cyfry i podkreślenia z nazwy, żeby zrobić ładny tytuł H1
    clean_title=$(echo "$filename" | sed -E 's/^[0-9]+_//' | sed 's/_/ /g')
    # Zamieniamy pierwszą literę na wielką
    clean_title="$(tr '[:lower:]' '[:upper:]' <<< ${clean_title:0:1})${clean_title:1}"

    # 4. Tworzenie pliku z treścią "To be translated"
    echo "# $clean_title" > "$target_file"
    echo "" >> "$target_file"
    echo "_To be translated..._" >> "$target_file"
    
    echo "Utworzono: $target_file"
done

echo "Zakończono tworzenie struktury angielskiej."