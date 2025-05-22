#import "../template/template.typ":*
#show: styling

#head1[ADA]

= ADA-Unterweisung: UND-Gatter mit 2 Schaltern und einer Leuchte

== Thema der Unterweisung
Verdrahtung einer Alarmanlage mit Logischen Gattern anhand einer Funktionsbeschreibung und eines Schaltplans im Modellaufbau.
== 1. Vorbereitung des Lehrlings

*Praxisbezogene Motivation:* \
Alarmanlagen in der Praxis verlangen mehrere Bedingungen, bevor sie scharf geschaltet werden. In unserem Fall:
- Türkontakt (Schalter 1): Tür muss geschlossen sein
- App-Befehl (Schalter 2): Digitale Freigabe muss erfolgen
Nur wenn *beide Bedingungen* erfüllt sind, aktiviert sich die Leuchte (simuliert die Alarmanlage).

Anhand des Beispiels der CBS Mannheim.

*Vorwissen Abfragen:*


*Arbeitssicherheit:*
- Spannungsfreiheit sicherstellen
- Kleinspannung verwenden
- Keine offenen Leitungen berühren

== 2. Lernziele

*Feinlernziele:*

- *Kognitiv:* Der Lehrling kann den aufbau erkläenen und kann die einzelnen bestenadteile erklären. er kann die grundsätzliche funktionsweise der alarmanlage nennen. er kann sicherheitsrelefante sachen nennen und erklären warum diese wichtig sind.

- *Psychomotorisch:* Der Lehrling verbindet die einzelnen Komponenten korrekt miteinander. (kaum Fehlerpotenzial)
- *Affektiv:* Sorgfältiges Arbeiten, planvolles und strukturiertes Vorgehen

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
	columns: (5),
	align: left,

	
	
	table.header(
   [*Was wird gemacht?*],[*Wie wird es gemacht?*], [*Warum wird es gemacht?*], [*Methodische Hinweise*],[*Zeit*]
  ),
	[Begrüßung], [Vorstellung des Themas], [Motivation], [Lehrling aktivieren], [2 Min],

	[Vorwissen abfragen], [Vorwissen abfragen], [Vorwissen aktivieren], [Fragen stellen], [2 Min],

	[Sicherheits-unterweisung], [Mündlich], [Sensibilisierung], [Fragen stellen], [2 Min],

	[Funktion des UND-Gatters erklären], [Beispiel], [Verständnis prüfen], [Fragen stellen], [2 Min],

	[Funktions-beschreibung analysieren], [Gespräch], [Verständnis prüfen], [gemeinsam durchgehen], [2 Min],

	[Schaltplan analysieren], [Mündlich], [Verständnis prüfen], [Fragen stellen], [2 Min],

	[Schaltung aufbauen], [Modellaufbau], [Verständnis prüfen], [Fragen stellen], [5 Min],

	[Theoretische Kontrolle], [Mündlich], [Verständnis prüfen], [Fragen stellen], [2 Min],

	[Praktische Kontrolle], [Praktische Kontrolle], [Verständnis prüfen], [Fragen stellen], [5 Min],

	[Reflexion], [Gespräch], [Verständnis prüfen], [Fragen stellen], [2 Min],

	[Üben], [Praktische Übung], [Verständnis prüfen], [Fragen stellen], [5 Min],

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



