# Thermodynamische Grundlagen – Zusammenfassung

## Aufgabe 1: Thermodynamisches System

Ein **thermodynamisches System** ist ein abgegrenzter Teil der Materie (z. B. Gas in einem Kolben, Flüssigkeit in einem Behälter, Gemisch aus flüssigem Wasser und Dampf), in dem makroskopische Zustandsgrößen (z. B. Druck, Temperatur, Energie) betrachtet werden. Alles außerhalb dieser Systemgrenze zählt zur Umgebung. Je nach Systemtyp kann durch die Grenzflächen ein Austausch von Energie (Wärme, Arbeit) und/oder Stoff stattfinden.

---

## Aufgabe 2: Systemtypen

| Typ des Systems        | Charakterisierung                                                                                          | Beispiel                                      |
|------------------------|------------------------------------------------------------------------------------------------------------|-----------------------------------------------|
| **Offenes System**     | - Austausch von **Masse und Energie** mit der Umgebung<br>- Wärme- und Stoffaustausch erlaubt              | Dampfturbine, Strömungskessel, Motor          |
| **Geschlossenes System** | - **Kein Stoffaustausch**<br>- Nur Energieaustausch (Wärme und Arbeit) erlaubt                           | Geschlossener Kolben-Zylinder                 |
| **Isoliertes System**  | - **Kein Stoff- und Energieaustausch** (keine Wärme, keine Arbeit, keine Masse)                            | Thermoskanne, perfekt isolierter Behälter     |

---

## Aufgabe 3: Reversibel / Irreversibel

### a) Reversibler Prozess (umkehrbar)
- Definition: Prozess, der theoretisch langsam (quasistatisch) ohne Verluste verläuft und exakt rückführbar ist.
- Beispiel: Quasistatische isotherme Expansion eines idealen Gases.

### b) Irreversibler Prozess (nicht umkehrbar)
- Definition: Realer Prozess mit Reibung, Wärmeleitung, Wirbeln oder Vermischungen; nicht exakt rückführbar.
- Beispiel: Schnelle Expansion eines Gases ins Vakuum (Joule-Thomson-Effekt).

---

## Aufgabe 4: Kreisprozesse & Anwendungen

| Gerätetyp           | Linkslaufend<br>(gegen Uhrzeigersinn) | Rechtslaufend<br>(Uhrzeigersinn) | Anwendungsbeispiel                      |
|---------------------|---------------------------------------|----------------------------------|-----------------------------------------|
| **Wärmekraftmaschine** | ☐                                     | ☑                                | Ottomotor, Diesel, Dampfturbine         |
| **Wärmepumpe**         | ☑                                     | ☐                                | Luft-Wasser-Wärmepumpe                  |
| **Kältemaschine**      | ☑                                     | ☐                                | Kühlschrank, Gefriertruhe, Klimaanlage  |

**Rechtslaufend (Wärmekraftmaschine):**  
- Wärme wird **dem heißen Reservoir entnommen**.  
- Wärme wird **an das kalte Reservoir abgegeben**.  
- Arbeit wird **vom System abgegeben**.

**Linkslaufend (Wärmepumpe/Kältemaschine):**  
- Wärme wird **von kalter Quelle (Innenraum/Umgebung) aufgenommen**.  
- Wärme wird **an warmes Reservoir abgegeben (Heizraum, Rückseite)**.  
- Arbeit wird **dem System zugeführt**.

---

## Aufgabe 5: Carnot-Wirkungsgrad

### Maximaler Wirkungsgrad (Carnot):
Der theoretisch maximale Wirkungsgrad $\eta_\text{Carnot}$ zwischen Wärmequelle ($T_\text{H}$) und Wärmesenke ($T_\text{C}$) lautet:

$$
\eta_\text{Carnot} = 1 - \frac{T_\text{C}}{T_\text{H}}
$$

- Nur theoretisch erreichbar; real durch irreversible Verluste reduziert.

### Folgen für Dampfkraftwerke:
- Maximale Effizienz durch hohen Temperaturunterschied:  
  - hohe Kesseltemperatur ($T_\text{H}$, z.B. >600 °C = ~900 K)  
  - niedrige Kondensatortemperatur ($T_\text{C}$, z.B. 30–40 °C ≈ 303–313 K)
- Real erzielte Wirkungsgrade:  
  - Subkritische Anlagen: **35–40 %**  
  - Überkritische Anlagen: **>45 %**  
  - Moderne kombinierte Anlagen: **50–55 %**  
- Praktische Effizienz stets deutlich unter Carnot-Grenze (~65 % realistisch).

---

## Kurze Zusammenfassung

1. **Thermodynamisches System**: Betrachteter Materieteil mit definierten Zustandsgrößen.
2. **Systemtypen**:  
   - **Offen** (Masse & Energieaustausch)  
   - **Geschlossen** (nur Energieaustausch)  
   - **Isoliert** (kein Austausch)
3. **Prozesse**:  
   - **Reversibel**: Umkehrbar ohne Verluste  
   - **Irreversibel**: Nicht exakt umkehrbar, reale Verluste
4. **Kreisprozesse**:  
   - Wärmekraftmaschinen (rechtslaufend, Arbeit erzeugend)  
   - Wärmepumpe/Kältemaschine (linkslaufend, Arbeit benötigend)
5. **Carnot-Wirkungsgrad**:  
   - Theoretisch maximal  
   - Praxis geringer wegen irreversibler Verluste
