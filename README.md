Who is this for?
--------
If you're the kind of person that likes total control over every aspect of your environment then Fractalide's AGPL v3-or-later codebase allows this freedom for everyone. Before you get your knickers in a twist about the choice of license, our business model is to share earnings with FOSS developers whom own the Flow Based Programming components that run on Fractalide. We use Mozart Oz to implement Flow Based Programming components, these in turn implement HyperCard. We've swapped out HyperTalk for a Flow Based Programming Language, thus allowing for maximum modularity, configurability, simplicity and reuseablity. Our target users are those whom are interested in building the Internet of Things using commodity hardware. We do this by supporting and developing around the development board called the IOIO-OTG.

Our main worry and motivation is to prevent a future controlled by a select few IoT overlords. This is why components developed by the community are owned by the community. It prevents a model whereby the community become our programmer slaves. Please read: The Epic Struggle of the Internet of Things by Bruce Stirling for more information.

Be warned this project is suitable for language enthusiasts and early adopters.

Why?
-----
When TCP/IP was invented a printer cost as much as a house and content was on punch cards in your pocket. The Internet was designed to connect computers together to share resources. It wasn't designed for today's usage, namely disseminating exabytes of content across wires. We're currently disseminating content over a point-to-point network. Leslie Lamport showed this process is quadratic time best case, exponential time worst case scenario. Named Data Networking, the brain child of Van Jacobson etal is a good solution to this problem. In other words, the problem has shifted away from connecting computers to cheaply disseminating data far and wide. We shouldn't have to rely on billion dollar companies to disseminate our data. Named Data Networking builds data dissemination and search into the networking protocol.

The current TCP/IP point-to-point Internet is not suitable for handling the insane amounts of data generated by the Internet of Things. Fractalide aims to add an overlay to TCP/IP allowing for Named Data Networking (aka Content Centric Networking) thus ameliorating the issues of security and scalability.

Developing IoT applications controlling real life objects isn't as smooth as it could be. Our aim is to use your finger to download already created components and simply wire them up to control your IOIO-OTG board. This will reduce development time down to mere minutes as opposed to hours if not days when including the setup of the development environment.

Textual code isn't very approachable to the average non-programmer. If this Internet of Things is to be ubiqitous then the common person will have to be able to program the Internet of Things. We feel the combination of Hypercard with a Flow Based Programming (FBP) language is a much better approach to programming for the average person. By using [Mozart Oz](http://www.mozart-oz.org) to implement FBP we deliver some 30 odd factored language concepts to FBP component developers. A few of those concepts allows for the Declarative Concurrent paradigm which enables the simple creation of open Internet applications. 

Community
--------
Group : https://groups.google.com/forum/#!forum/fractalide
IRC   : freenode #fractalide

Usage
-----

* You'll need to setup the latest version of [Mozart](http://www.github.com/mozart/mozart2) OR
* Use the Mozart Oz binary: [Mozart binary](http://sourceforge.net/projects/mozart-oz/files/v2.0.0-alpha.0/)
* Setup Oz's environmental variables; point `OZHOME` to the root folder and put the `bin` folder on `PATH`
* `git clone git://github.com/fractalide/fractalide.git`
* `cd fractalide`
* `make`
* `$ ./fractalide.sh tests/dnd`

License
--------
All code is AGPL v3-or-later.
All content published on this platform is licensed as Community Commons.
You own your contributions, we help you setup a dual license strategy.
