#import "../template/template.typ":*
#show: styling

#head1[ADA]

#let title = [ADA-Unterweisung: UND-Gatter mit 2 Schaltern und einer Leuchte]

= #title

== Thema der Unterweisung
Verdrahten eines UND-Gatters mit zwei Schaltern und einer Leuchte im Modell Aufbau für das Technische Verständnis.

== 1. Vorbereitung des Lehrlings

*Praxisbezogene Motivation:* \
Alarmanlagen in der Praxis verlangen mehrere Bedingungen, bevor sie scharf geschaltet werden. In unserem Fall:
- Türkontakt (Schalter 1): Tür muss geschlossen sein
- App-Befehl (Schalter 2): Digitale Freigabe muss erfolgen
Nur wenn *beide Bedingungen* erfüllt sind, aktiviert sich die Leuchte (simuliert die Alarmanlage).

*Vorwissen Abfragen:*


*Arbeitssicherheit:*
- Spannungsfreiheit sicherstellen
- Kleinspannung verwenden
- Keine offenen Leitungen berühren

== 2. Lernziele

*Feinlernziele:*

- *Kognitiv:* Der Lehrling kann den aufbau erkläenen und kann die einzelnen bestenadteile erklären. er kann die grundsätzliche funktionsweise der alarmanlage nennen. er kann sicherheitsrelefante sachen nennen und erklären warum diese wichtig sind.

- *Psychomotorisch:* Der Lehrling führt die Brücke Korrekt in die Arbeitsblatte ein.
- *Affektiv:* Sorgfältiges arbeiten panfolles vorgehen

== 3. Didaktische und pädagogische Prinzipien

*Didaktische Prinzipien:*
- Zielklarheit
- Aktivitätsförderung
- Individualisierung
- Fasslichkeit
- Erfolgssicherung

*Pädagogische Vermittlungsprinzipien:*
- Vom Bekannten zum Unbekannten
- Vom Leichten zum Schweren
- Vom Konkreten zum Abstrakten

== 4. Arbeitszergliederung

#table(
  columns: 4,
  align: auto,
  [Was wird gemacht?], [Wie wird es gemacht?], [Warum wird es gemacht?], [Methodische Hinweise],
  [Aufbau der Schaltung],
  [Zwei Schalter, UND-Gatter und Leuchte verbinden],
  [Um die Funktion der Anlage herzustellen],
  [reale Komponenten zeigen],

  [Funktionsweise erklären],
  [],
  [Logikverständnis fördern],
  [Komponenten mit einbeziehen],

  [Schaltung testen], [Strom anlegen und testen Schalter-stellungen variieren und Leuchte beobachten], [Erfolg sichtbar machen], [Lehrling selbst testen lassen, Kontrolle durch Sichtprüfung],
)

== 5. Lernzielkontrolle

*Theoretische Kontrolle:*
- Was passiert, wenn nur ein Schalter geschlossen ist?
- Wie sieht die Wahrheitstabelle für ein UND-Gatter aus?

*Praktische Kontrolle:*
- Funktioniert die Schaltung nur bei beiden geschlossenen Schaltern?
- Leuchtet die Leuchte?

*Medieneinsatz:*
// - Schaltplan (Papier/Beamer)
// - Logik-Simulation (z.B. Logisim)
// - Lückentext/Wahrheitstabelle als Aufgabenblatt
- Beispiel aus Tia



