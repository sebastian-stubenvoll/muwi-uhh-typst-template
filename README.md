# MuWi UHH typst template 
This repository comtains a typst template adhering to the styleguide of the Musicology faculty at the University of Hamburg. It is noteworthy that typst does linespacing differently than LaTeX or Word.
 
⚠️ This template may be out of date! The current version is [this](https://www.kulturwissenschaften.uni-hamburg.de/sm/studium/dokumente/richtlinien-abschluss-und-hausarbeiten.pdf) one ⚠️


## Example usage

Import the template with 
```typst
#import "template.typ": muwi, muwiCover
```
and apply it via
```typst
#show: muwi.with(
  title_page: muwiCover(
    title: [
      #text("My title", size: 3em)
      #linebreak()
      #text("Some subtitle that is smaller", size: 1.5em)
    ],
    semester: "Wintersemester 2025/2026",
    // etc...
  )
)
```

The template takes an additional option `title_page`. This is the title/cover page; a typst content block that is inserted at the start of document. The template also offers a helper function that can create a basic title pages (see below).

### Title page helper
The `muwiCover` function will create a basic title page. Most details are passed in as arguments. For more sensitive information (e.g. address, email) the information is supplied via `#sys.inputs` and must thus be supplied at compile-time via the `--input <key>=<value>` flag.
Below if is a full list of arguments/options

|Argument | Passed via | Description |
|---------|------------|-------------|
| `semester` | function arg | The current semester |
| `seminar`  | function arg | The seminar this document is written for |
| `department` | function arg | The musicology deparment (historic/systematic) |
| `lecturer` | function arg | Lecturer of the course |
| `umodule` | function arg | The module this document is written for |
| `points` | function arg | The LP the module is worth |
| `title` | function arg | The title of the document |
| `name` | compiler input | Name of the author |
| `fachsemester` | compiler input | Current fachsemester of the author |
| `address` | compiler input | Address of the author |
| `email` | compiler input | Mail address of the author |


