// https://www.kulturwissenschaften.uni-hamburg.de/sm/studium/dokumente/richtlinien-abschluss-und-hausarbeiten.pdf

#let muwi(
  title_page: [],
  doc,
) = {
  // "DIN A4, einseitig bedruckt, Seitenränder 2,5 cm"
  set page(
    paper: "a4",
    margin: 2.5cm,
  )

  // "Zeilenabstand: 1,5 Zeilen" (typst does this differently than word/LaTeX)
  // "Textausrichtung: Blocksatz"
  set par(
    leading: 0.5em,
    justify: true,
  )
  set text(
    top-edge: 0.7em,
    bottom-edge: -0.3em,
    font: "Times New Roman",
  )

  set heading(numbering: "1.1")

  title_page
  pagebreak()

  outline()
  pagebreak()

  set page(numbering: "1")
  doc
}


#let muwiCover(
  semester: "",
  seminar: "",
  department: "",
  lecturer: "",
  umodule: "",
  points: "",
  title: "",
) = {
  let courseInfo = [
    Universität Hamburg #linebreak()
    Institut für #department #linebreak()
    Semester: #semester #linebreak()
    Seminar: #seminar #linebreak()
    Dozent*in: #lecturer #linebreak()
    Modul: #umodule #linebreak()
    Leistungspunkte #points
  ]

  let personalInfo = [
    Vorgelegt von: #linebreak()
    #sys.inputs.name #linebreak()
    #department #linebreak()
    Fachsemester: #sys.inputs.fachsemester #linebreak()
    Adresse: #sys.inputs.address #linebreak()
    E-Mail: #sys.inputs.email #linebreak()
  ]

  grid(
    rows: (1fr, 1fr, 1fr),
    align(top + left, courseInfo),
    align(center + horizon, block(width: 100%, title)),
    align(bottom + left, personalInfo),
  )
}

