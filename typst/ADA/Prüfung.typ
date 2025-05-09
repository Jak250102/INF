#import "/typst/template/template.typ": *
#show: styling

#head1[ADA]

#let title = [ADA-Unterweisung: UND-Gatter mit 2 Schaltern und einer Lampe]

= #title

== Thema der Unterweisung
Verdrahten eines UND-Gatters mit zwei Schaltern und einer Lampe im Modell Aufbau für das Technische Verständnis.

== 1. Vorbereitung des Lehrlings

*Praxisbezogene Motivation:* \
Alarmanlagen in der Praxis verlangen mehrere Bedingungen, bevor sie scharf geschaltet werden. In unserem Fall:
- Türkontakt (Schalter 1): Tür muss geschlossen sein
- App-Befehl (Schalter 2): Digitale Freigabe muss erfolgen
Nur wenn *beide Bedingungen* erfüllt sind, aktiviert sich die Lampe (simuliert die Alarmanlage).

*Vorwissen Abfragen:*


*Arbeitssicherheit:*
- Spannungsfreiheit sicherstellen
- Kleinspannung verwenden
- Keine offenen Leitungen berühren

== 2. Lernziele

*Feinlernziele:*

- *Kognitiv:* Der Lehrling versteht die Logik des UND-Gatters.

- *Psychomotorisch:* Der Lehrling verdrahtet die Schaltung korrekt.
- *Affektiv:* Der Lehrling erkennt den sicherheitstechnischen Nutzen kombinierter Bedingungen.

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
  align: left,
  [Was wird gemacht?], [Wie wird es gemacht?], [Warum wird es gemacht?], [Methodische Hinweise],
  [Aufbau der Schaltung],
  [Zwei Schalter, UND-Gatter und Lampe verbinden],
  [Um Alarmbedingung zu simulieren],
  [reale Komponenten zeigen],

  [Funktionsweise erklären],
  [Schalterstellungen variieren und Lampe beobachten],
  [Logikverständnis fördern],
  [Lehrling selbst testen lassen],

  [Schaltung testen], [Strom anlegen und testen], [Erfolg sichtbar machen], [Kontrolle durch Sichtprüfung],
)

== 5. Lernzielkontrolle

*Theoretische Kontrolle:*
- Was passiert, wenn nur ein Schalter geschlossen ist?
- Wie sieht die Wahrheitstabelle für ein UND-Gatter aus?

*Praktische Kontrolle:*
- Funktioniert die Schaltung nur bei beiden geschlossenen Schaltern?
- Leuchtet die Lampe?

*Medieneinsatz:*
// - Schaltplan (Papier/Beamer)
// - Logik-Simulation (z.B. Logisim)
// - Lückentext/Wahrheitstabelle als Aufgabenblatt
Beispiel aus Tia

== Anhang (optional)

Eine einfache Schaltskizze kann erstellt und als Medienunterstützung eingebunden werden.

