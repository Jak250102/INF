#import "../template/template.typ":*
#show: styling

#head1[Elektronik]

#hr
#outline(indent: auto,depth: 4)
#hr

= Linux Befehle
== LS 
zeigt den Inhalt des aktuellen Verzeichnisses an.
=== LS -l
zeigt den Inhalt des aktuellen Verzeichnisses in Langform an.

== CD
wechseln Sie in ein anderes Verzeichnis.
=== CD \~
Wechseln Sie in das Home-Verzeichnis.
=== CD ..
Wechseln Sie in das übergeordnete Verzeichnis.

=== CD .
Wechseln Sie in das aktuelle Verzeichnis (keine Änderung). Zielt auf sich selbst

== CHMOD
Ändern Sie die Berechtigungen einer Datei oder eines Verzeichnisses.
- z.B. 755 Dateiname
== TAB Taste
Die Tabulatortaste vervollständigt den Dateinamen automatisch. Tab Tab zeigt alle Möglichkeiten an.
== --help
zeigt die Hilfe für einen Befehl an.

== CLEAR
Löscht den Bildschirm.
== nano
Ein einfacher Texteditor, der im Terminal läuft.
- z.B. nano Dateiname
^= Strg + X zum Beenden
== ./Dateiname

== mv
Verschiebt eine Datei oder ein Verzeichnis.

== cp
Kopiert eine Datei oder ein Verzeichnis.

== rm
Entfernt eine Datei oder ein Verzeichnis.

== wget
Lädt Dateien von einem Webserver herunter.

== Erweiterte Optionen
=== -l
zeigt die Dateien in Langform an.
=== -a
zeigt alle Dateien an, einschließlich versteckter Dateien (die mit einem Punkt beginnen).

=== -o
Lädt eine Datei herunter und speichert sie unter einem bestimmten Namen.

