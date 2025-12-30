#show link: it => underline(offset: 2pt, it)
#set page(
  margin: (x: 3cm, y: 2cm),
  footer: context [
    #set align(center)
    #counter(page).display(
      "1 of 1",
      both: true,
    )
  ],
)
#show heading: it => [
  #set text(size: 12pt, font: "Calistoga")
  #it.body \
]

#show link: it => [
  #it.body
]

#let work_sep() = align(center)[
  #v(12pt)
  #line(length: 90%, stroke: (dash: "dashed"))
  #v(12pt)
]

#grid(
  columns: (auto, 1fr, auto),
  grid.cell([
    = Elias Prescott
    Software Engineering & Web Development \
    Oklahoma, US
  ]),
  grid.cell([]),
  grid.cell([
    #set align(right)
    https://linkedin.com/in/elias-prescott \
    https://github.com/EliasPrescott \
    https://australorp.dev \
    #link("mailto:eliasprescott@gmail.com")[eliasprescott\@gmail.com]
  ]),
)

#v(12pt)

#line(length: 100%)

#v(12pt)

= Work Experience

#grid(
  columns: (auto, 1fr, auto),
  grid.cell([
    *Francis Tuttle Technology Center* \
    Software Engineer
  ]),
  grid.cell([]),
  grid.cell(align(right)[
    *December 2023 - Present* \
    Oklahoma City, OK
  ]),
)
- Designed and implemented a new shopping flow for an in-house e-commerce site using React.js, SASS, and the Material design library.
- Reworked the deployment pipelines and tooling using Bash, GCP, Terraform, and GitHub Actions.
- Fixed bugs and added countless features to an internal web app using C\#, React.js, and Postgres.
- Developed complex SQL queries using advanced features such as window functions.

#work_sep()

#grid(
  columns: (auto, 1fr, auto),
  grid.cell([
    *Hobby Lobby* \
    Software Developer
  ]),
  grid.cell([]),
  grid.cell(align(right)[
    *July 2022 - December 2023* \
    Oklahoma City, OK
  ]),
)
- Worked with the business unit to automate hundreds of tests for a vital internal application using TypeScript, saving around 500 hours of manual testing each release cycle.
- Wrote web and API load tests for the company's new e-commerce site to ensure it could handle production traffic.
- Developed automated tests for a new point of sale application to catch multiple unique failure paths before it rolled out into stores.
- Mentored two interns. Taught them both TypeScript and helped them complete complex intern projects.

#work_sep()

#grid(
  columns: (auto, 1fr, auto),
  grid.cell([
    *Spherexx* \
    Front-End Developer
  ]),
  grid.cell([]),
  grid.cell(align(right)[
    *June 2021 - May 2022* \
    Tulsa, OK
  ]),
)
- Created multiple landing pages and apartment leasing websites. Learned to match designers' mock-ups down to the pixel.
- Maintained and managed over 100 different client WordPress sites.
- Developed an internal application to track the history of WordPress plugin updates to rollback problematic updates.

#v(12pt)

#line(length: 100%)

#v(12pt)

= Education

*OSU Institute of Technology* \
Bachelors of Information Technologies \
4.0 GPA

#v(12pt)

#pagebreak()

= Skills

#table(
  columns: (auto, auto),
  inset: 6pt,

  table.header(
    [*Area*], [*Breakdown*]
  ),

  [Front-end Web Development], [HTML, CSS, SASS, Tailwind, JavaScript, TypeScript, React, Angular, HTMX, JQuery.],
  [Back-end Web Development], [C\#, .NET Core, Web APIs, JavaScript, TypeScript, Python, Ruby, Rust.],
  [DevOps & Infrastructure], [Bash, Powershell, Docker, Terraform, GCP, Jenkins, GitHub Actions, Grafana, OpenTelemetry.],
  [Databases], [PostgreSQL, SQL Server, SQLite, Schema Design, Query Optimization & Index Design, Redis.],
  [Developer Tooling], [Process automation using Bash and Ruby, Developing and using command-line applications, Assisting and training other developers.],
  [Software Architecture], [Monolith & micro-service design experience, Extensive knowledge of traditional and modern approaches to software design.],
  [Formal Verification], [Verification of software designs using TLA+ and Alloy.],
  [Visual Design], [Web Design, UI/UX Design, Working with Mock-ups.],
)
