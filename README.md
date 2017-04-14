Marina
=====

A CMS built on top of [Pillar](http://www.smalltalkhub.com/#!/~Pier/Pillar) and [Seaside](https://seaside.st).

## Installation

```smalltalk
Metacello new
  repository: 'github://estebanlm/marina';
  baseline: 'Marina';
  load.
```

Then initialize everything:

```
MRSetup setupAll
```

Then you can visit these 2 urls:

- http://localhost:8080/web/
- http://localhost:8080/web-admin/
