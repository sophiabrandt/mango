<!-- PROJECT SHIELDS -->
<!--
-->

[![Contributors][contributors-shield]][contributors-url]
[![MIT License][license-shield]][license-url]

<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/sophiabrandt/mango">
    <img src="logo.png" alt="Logo">
  </a>

  <h3 align="center">Mango</h3>

  <p align="center">
    Phoenix 1.4 e-commerce shop
    <br />
    <a href="https://github.com/sophiabrandt/mango"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/sophiabrandt/mango">View Demo</a>
    ·
    <a href="https://github.com/sophiabrandt/mango/issues">Report Bug</a>
    ·
    <a href="https://github.com/sophiabrandt/mango/issues">Request Feature</a>
  </p>
</p>

<!-- TABLE OF CONTENTS -->

## Table of Contents

- [About the Project](#about-the-project)
  - [Built With](#built-with)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
- [Roadmap](#roadmap)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)
- [Acknowledgements](#acknowledgements)

<!-- ABOUT THE PROJECT -->

## About The Project

This repo mirrors my progress on **[Mastering Phoenix Framework][phoenixbook]** by Shankar Dhanasekaran.

Please see [shankardevy/mango][shankarmango] for further details.

### Built With

- [Phoenix 1.4][phoenixframework]
- [Bootstrap](https://getbootstrap.com)
- [PostgreSQL](https://www.postgresql.org/)

<!-- GETTING STARTED -->

## Getting Started

### Prerequisites

This project uses [Phoenix 1.4][phoenixframework], the web framework for the Elixir language.

Please make sure to install [Phoenix and its dependencies](https://hexdocs.pm/phoenix/installation.html#content).

The project uses [Docker](https://www.docker.com/) and [docker-compose](https://docs.docker.com/compose/install/) for setting up a Postgres database.

```bash
docker -v
> Docker version 19.03.11-ce
```

```bash
docker-compose -v
> docker-compose version 1.25.5
```

### Installation

- Clone the repo

```sh
git clone https://github.com/sophiabrandt/mango.git
```

- Install dependencies with `mix deps.get`
- Install Node.js dependencies with `cd assets && npm install`

<!-- USAGE EXAMPLES -->

## Usage

1. Start the Postgres database:

    ```bash
    docker-compose up -d
    ```
    
    Create and migrate your database:
    ```bash
    mix ecto.setup
    ```


2. To start your Phoenix server:

    ```bash
    mix phx.server
    ```

    Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

3. To run the tests:

    ```sh
    phantomjs --wd
    ```
    
    Then:
    
    ```sh
    mix test
    ```

4. Production

    Ready to run in production? Please [check the deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

- Official website: http://www.phoenixframework.org/
- Guides: https://hexdocs.pm/phoenix/overview.html
- Docs: https://hexdocs.pm/phoenix
- Mailing list: http://groups.google.com/group/phoenix-talk
- Source: https://github.com/phoenixframework/phoenix

<!-- ROADMAP -->

## Roadmap

See the [open issues](https://github.com/sophiabrandt/mango/issues) for a list of proposed features (and known issues).

<!-- LICENSE -->

## Licence

All code is written by Shankar Dhanaksekaran.  
With modifications by Sophia Brandt.

According to the [project's website][phoenixbook], the [original repo][shankarmango] uses the MIT licence. Thus I've included this licence here, too.

See `LICENCE` for more information.

<!-- CONTACT -->

## Contact

Sophia Brandt - [@hisophiabrandt](https://twitter.com/hisophiabrandt)

Project Link: [https://github.com/sophiabrandt/mango](https://github.com/sophiabrandt/mango)

<!-- ACKNOWLEDGEMENTS -->

## Acknowledgements

- [Mastering Phoenix Framework][phoenixbook]
- [Img Shields](https://shields.io)
- [Choose an Open Source License](https://choosealicense.com)
- [Best-README-Template](https://github.com/sophiabrandt/mango/)

<!-- MARKDOWN LINKS & IMAGES -->

[contributors-shield]: https://img.shields.io/badge/contributors-1-orange.svg?style=flat-square
[contributors-url]: https://github.com/sophiabrandt/mango/graphs/contributors
[license-shield]: https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square
[license-url]: https://choosealicense.com/licenses/mit
[shankarmango]: https://github.com/shankardevy/mango
[phoenixbook]: https://shankardevy.com/phoenix-book/
[phoenixframework]: https://phoenixframework.org/
