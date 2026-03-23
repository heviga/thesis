# Nastavenie SyncTeX pre Cursor

## Problém
Adobe Reader **nepodporuje** SyncTeX forward search (dvojklik v PDF → skok na zdroj). Toto je obmedzenie Adobe Readera.

## Riešenia

### Riešenie 1: LaTeX Workshop Extension (ODPORÚČANÉ) ⭐

1. Otvorte Cursor
2. Stlačte `Ctrl+Shift+X` (Extensions)
3. Vyhľadajte "LaTeX Workshop"
4. Nainštalujte rozšírenie od James-Yu
5. Po inštalácii:
   - Kompilujte cez rozšírenie (alebo použite váš `compile_thesis.bat`)
   - PDF sa otvorí v zabudovanom prehliadači rozšírenia
   - **Dvojklik v PDF automaticky skočí na zdrojový kód v Cursor**

### Riešenie 2: SumatraPDF (Najlepšie pre externý prehliadač)

1. Stiahnite: https://www.sumatrapdfreader.org/
2. Nainštalujte
3. Znovu skompilujte tému - skripty ho automaticky detekujú
4. Dvojklik v PDF funguje automaticky

### Riešenie 3: Manuálna konfigurácia Adobe Reader (ZLOŽITÉ)

Adobe Reader nepodporuje SyncTeX forward search natívne. Pokus o manuálnu konfiguráciu:

1. Otvorte Adobe Reader
2. Edit → Preferences → General
3. Nájdite "Select tool" alebo podobné nastavenia
4. Konfigurácia je zložitá a často nefunguje

**POZNÁMKA:** Adobe Reader nemá dobrú podporu pre SyncTeX forward search. Pre fungujúce riešenie použite LaTeX Workshop extension alebo SumatraPDF.

## Aktuálny stav

✅ SyncTeX je zapnutý v kompilácii (`-synctex=1`)  
✅ PDF obsahuje sync informácie  
✅ Helper skript vytvorený: `synctex_cursor.bat`  

**PDF je pripravené pre SyncTeX - potrebujete kompatibilný prehliadač!**

## Odporúčanie

Použite **LaTeX Workshop extension** v Cursor - je to najjednoduchšie a najspoľahlivejšie riešenie.






