## Nightingale Surveillance Service Prototype

This is a surveillance module that can be integrated with an
electronic death registration system and can be used to watch for key
terms. This module is currently notional and experimental, intended to
explore concepts within surveillance of mortality data.

This module currently allows a user to create simple surveillance
requests, specifying which fields to watch and what terms to look for
in those fields. For example, the cause of death literal strings from
a death record could be inspected for opioid related terms.

This module is currently set up to run in conjunction with the
[Nightingale EDRS prototype](https://github.com/nightingaleproject/nightingale),
which should be set up using the "surveillance" branch, which supports
integration with this surveillance service.

### Installation and Setup for Development or Testing

Nightingale Surveillance is a Ruby on Rails application that uses the PostgreSQL database for data storage.

#### Prerequisites

To work with the application, you will need to install some prerequisites:

* [Ruby](https://www.ruby-lang.org/)
* [Bundler](http://bundler.io/)
* [Postgres](http://www.postgresql.org/)

#### Setup

* Retrieve the application source code

    `git clone https://github.com/nightingaleproject/nightingale-surveillance.git`

* Change into the new directory

    `cd nightingale-surveillance`

* Install ruby gem dependencies

    `bundle install`

* Create the database

    `bundle exec rake db:drop db:create db:migrate RAILS_ENV=development`

* Run the service on the port expected by Nightingale EDRS

    `PORT=4000 rails server`

### Version History

This project adheres to [Semantic Versioning](http://semver.org/).

Releases are documented in the [CHANGELOG](https://github.com/nightingaleproject/nightingale/blob/master/CHANGELOG.md).

### License

Copyright 2017 The MITRE Corporation

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

```
http://www.apache.org/licenses/LICENSE-2.0
```

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.

### Contact Information

For questions or comments about Nightingale EDRS, please send email to

    cdc-nvss-feedback-list@lists.mitre.org
