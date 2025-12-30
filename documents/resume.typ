#show link: it => smallcaps(it)

#show heading: it => [
  #set text(size: 12pt, font: "Calistoga")
  #it.body \
]

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
      Redesigned an education e-commerce site using React.js, SASS, and the Material design library.
      These changes save time and reduce confusion for our customers.
    ],
    [
      Reworked our CI/CD pipeline and our pipeline hosting from Circle CI to GitHub Actions.
      This simplified operations for our team, reduced vendor lock-in, and will make future updates easier.
    ],
    [
      Added numerous features to an internal web app using C\#, React.js, and Postgres.
    ],
    [
      Analyzed and optimized several large SQL queries, resulting in 10-50x speed boosts on average.
      These changes save time for my coworkers, but they also simplified our architecture by
      allowing us to remove an additional data caching layer in our web app.
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
      These tests save around 500 hours of manual testing work for each release cycle of the application.
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
    [
      Developed an internal application to track history for WordPress plugin updates.
      This app provides a detailed audit trail for plugin updates and enables easier update rollbacks.
    ],
  )
)

#pagebreak()

#v(12pt)

= My Professional Mission Statement

My purpose at work is to make people's lives better, to always be learning, and to always be teaching.
Technology just happens to be the tool I use to make that purpose possible.
No responsibility is too small or too large, as long as it is in service of helping the people around me.

#v(12pt)

= Skills

#table(
  columns: (auto, auto),
  inset: 6pt,

  table.header(
    [*Area*], [*Breakdown*]
  ),

  [Front-end Web Development], [HTML, CSS, JavaScript, TypeScript, React, HTMX, JQuery, SEO, Web Accessibility.],
  [Back-end Web Development], [C\#, .NET Core, Web APIs, JavaScript, TypeScript, Python, Django, Ruby on Rails, Rust.],
  [DevOps & Infrastructure], [Bash, Docker, Nix, Terraform, GCP, Ansible, Jenkins, GitHub Actions, Grafana, Prometheus, OpenTelemetry.],
  [Unix/Linux/BSD Administration], [OpenSSH, Nginx, WireGuard, QEMU, Proxmox, NixOS, Vim, NeoVim, Not Emacs.],
  [Databases], [PostgreSQL, SQL Server, SQLite, Schema Design, Query Optimization & Index Design, Redis.],
  [Developer Tooling], [Process automation using Bash and Ruby, Developing and using command-line applications, Assisting and training other developers.],
  [Software Architecture], [Monolith & micro-service design experience, Working knowledge of traditional and modern approaches to software design.],
  [Visual Design], [Web Design, UI/UX Design, Working with Mock-ups.],
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

    = About this Document

    This résumé was compiled using Typst from a source file written by yours truly.
    Every line, letter, and measurement was carefully considered.
    If you have any issues or suggestions for its betterment, please contact me immediately.
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
