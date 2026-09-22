#show link: it => smallcaps(it)

#show heading: it => [
  #set text(size: 12pt)
  #it.body \
]

#set page(
  margin: (x: 3cm, y: 2.5cm),
  footer: context [
    #set align(center)
    #counter(page).display(
      "1 of 1",
      both: true,
    )
  ],
)

#let work_sep = align(center)[
  #v(12pt)
  #line(length: 90%, stroke: (dash: "dashed"))
  #v(12pt)
]

#let work_exp(company, title, date_range, loc, items) = [
  #grid(
    columns: (auto, 1fr, auto),
    grid.cell[
      #strong(company) \
      #title
    ],
    grid.cell[],
    grid.cell(align(right)[
      #strong(date_range) \
      #loc
    ]),
  )
  #for item in items [
    - #item

  ]
]

#grid(
  columns: (auto, 1fr, auto),
  grid.cell([
    = Elias Prescott
    Software Engineering,
    Web Development,
    DevOps \
    Oklahoma, US
  ]),
  grid.cell([]),
  grid.cell([
    #set align(right)
    #link("mailto:eliasprescott@gmail.com")[eliasprescott\@gmail.com] \
    https://australorp.dev
  ]),
)

#v(12pt)

#line(length: 100%)

#v(12pt)

= Work Experience

#work_exp(
  "Francis Tuttle Technology Center",
  "Software Engineer",
  "December 2023 - Present",
  "Oklahoma City, OK",
  (
    [
      Redesigned an education e-commerce site with an entirely new visual style and shopping flow.
      These changes save time for customers and increased cart conversions.
    ],
    [
      Refactored all our app's accounting logic, converting 40,000 lines of legacy code down to 10,000 lines of simpler, more maintainable code.
      I also learned double entry bookkeeping in the process.
    ],
    [
      Added countless features to an internal web app using C\#, React.js, and Postgres.
    ],
    [
      Analyzed and optimized large SQL queries, speeding up multiple reports by 10-50x,
      and also simplifying our architecture by eliminating the need for an additional data caching layer.
    ],
    [
      Developed and released multiple new PDF reports & a search feature in under a week's time, right before the school year started.
      I recieved a service award for representing the school's values while working on this.
    ]
  )
)

#work_sep

#work_exp(
  "Hobby Lobby",
  "Software Developer",
  "July 2022 - December 2023",
  "Oklahoma City, OK",
  (
    [
      Mentored two interns. Taught them both TypeScript and helped them complete complex intern projects.
      I volunteered for this project because I love helping others and passing on what I learn.
    ],
    [
      Automated hundreds of tests for a vital internal application using TypeScript.
      These tests save around 500 hours of manual testing each release cycle.
    ],
    [
      Wrote web and API load tests in Python for the company's new e-commerce site.
      This helped ensure the site could handle production traffic on release.
    ],
    [
      Developed automated tests for a new point of sale application to catch costly failures before they appeared in stores.
    ]
  )
)

#work_sep

#work_exp(
  "Spherexx",
  "Junior Front-End Developer",
  "June 2021 - May 2022",
  "Tulsa, OK",
  (
    [
      Created apartment landing pages and leasing sites with PHP, WordPress, and Visual Basic to drive up impressions and initial business for new luxury apartment complexes.
    ],
    [
      Maintained and managed over 100 different client WordPress sites.
      This kept client sites secure and allowed us to catch regressions early.
    ],
  )
)

#pagebreak()

#v(12pt)

= My Professional Mission Statement

My professional mission is to make people's lives better, to always be learning, and to always be teaching.
I love taking on new challenges.
I take pride in my work and love what I do.

#v(12pt)

= Skills

#table(
  columns: (auto, auto),
  inset: 6pt,

  table.header(
    [*Area*], [*Breakdown*]
  ),

  [Front-end Web Development], [HTML, CSS, JavaScript, TypeScript, React, HTMX, JQuery, Visual Design, SEO, Web Accessibility.],
  [Back-end Web Development], [C\#, .NET Core, Web APIs, JavaScript, TypeScript, Python, Django.],
  [DevOps & Infrastructure], [Bash, Docker, Nix, Terraform, GCP, Ansible, Jenkins, GitHub Actions, Grafana, Prometheus.],
  [Database Programming], [SQL, PostgreSQL, Advanced PL/pgSQL, SQL Server, SQLite, Schema Design, Query Optimization & Index Design, Redis.],
  [Systems Engineering], [Using Rust, Go, and Odin for high-performance systems.],
  [Unix/Linux/BSD Usage], [OpenSSH, Nginx, WireGuard, NixOS, Vim, NeoVim, Not Emacs.],
  [Developer Tooling], [Process automation using Bash and Python, Developing and using command-line applications, Assisting and training other developers.],
)

#v(12pt)

#grid(
  columns: (auto, 12pt, auto),
  grid.cell[
    = Education

    *OSU Institute of Technology* \
    Bachelors of Information Technology \
    4.0 GPA

    #v(12pt)

    Last updated #datetime.today().display("[month repr:short] [day], [year]").
  ],
  grid.cell[],
  grid.cell[
    = More Information

    #table(
      columns: (auto),
      inset: 6pt,
      [LinkedIn \ https://linkedin.com/in/elias-prescott],
      [GitHub \ https://github.com/EliasPrescott],
      [Personal Blog \ https://australorp.dev],
      [Email \ #link("mailto:eliasprescott@gmail.com")[eliasprescott\@gmail.com]],
      [Phone Number \ #smallcaps[available upon request.]],
    )
  ],
)

#v(12pt)
