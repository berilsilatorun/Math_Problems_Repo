#!/bin/bash

# Ustawienia
DOCS_DIR="docs"
LANGUAGES=("pl" "en")

if ! command -v pandoc &> /dev/null; then
    echo "Błąd: Brak pandoca."
    exit 1
fi

echo "Start konwersji z zachowaniem struktury katalogów..."

for lang in "${LANGUAGES[@]}"; do
    WORK_DIR="${DOCS_DIR}/${lang}"
    PDF_ROOT="${WORK_DIR}/pdf"
    
    if [ ! -d "$WORK_DIR" ]; then continue; fi

    echo "--- Przetwarzanie języka: $lang ---"

    # Szukamy plików .md, pomijając folder 'pdf', żeby nie robić pętli
    find "$WORK_DIR" -type f -name "*.md" -not -path "*/pdf/*" -print0 | while IFS= read -r -d $'' file; do
        
        # 1. Obliczamy ścieżkę względną pliku względem katalogu językowego
        # Np. dla "docs/pl/1_Algebra/macierze.md" -> "1_Algebra/macierze.md"
        rel_path="${file#$WORK_DIR/}"
        
        # 2. Wyciągamy sam katalog z tej ścieżki
        # Np. "1_Algebra"
        sub_dir=$(dirname "$rel_path")
        
        # 3. Ustalamy docelowy katalog wewnątrz folderu pdf
        # Np. "docs/pl/pdf/1_Algebra"
        target_dir="${PDF_ROOT}/${sub_dir}"
        
        # 4. Tworzymy ten podkatalog, jeśli nie istnieje
        mkdir -p "$target_dir"

        # 5. Ustalamy nazwę pliku wyjściowego
        filename=$(basename "$file" .md)
        output_file="${target_dir}/${filename}.pdf"

        echo " -> $sub_dir/$filename.pdf"

        pandoc "$file" \
            -o "$output_file" \
            --pdf-engine=xelatex \
            -V geometry:margin=2cm \
            # -V mainfont="DejaVu Serif" \
            # -V monofont="DejaVu Sans Mono" \
            --variable urlcolor=blue \
            --resource-path="$(dirname "$file")"

    done
done

echo "Gotowe. Struktura katalogów została odwzorowana w folderach pdf."