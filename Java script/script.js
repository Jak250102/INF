
// JavaScript für die Steuerung des Inhalts

function showSection(sectionId) {
	// Diese Funktion zeigt den ausgewählten Abschnitt (Folie) an und blendet alle anderen aus
	
	// Alle Abschnitte finden (mit 'section' HTML-Tag) und ausblenden
	var sections = document.querySelectorAll('section');
	sections.forEach(function (section) {
		section.classList.remove('active'); // Entfernt die "active"-Klasse, sodass der Abschnitt ausgeblendet wird
	});
	
	// Zeigt den Abschnitt, der über die sectionId übergeben wurde, an
	document.getElementById(sectionId).classList.add('active'); // Fügt die "active"-Klasse hinzu, um den Abschnitt anzuzeigen
}

// Wird ausgeführt, wenn die Seite vollständig geladen ist
window.onload = function () {
	// Standardmäßig wird die erste Folie angezeigt
	showSection('folien1'); // Ruft die Funktion auf, um "Folie 1" beim Laden der Seite zu zeigen
};
