<h1 align="center">
  <a href="https://github.com/DavideFauri/resume" title="Résumé Davide Fauri">
    <img alt="DavideFauri" src="https://github.com/DavideFauri/resume/raw/master/icon.png" width="200px" height="200px" />
  </a>
  <br />
  Davide Fauri
</h1>

<p align="center">
  Professional résumé
</p>

<div align="center">
  <a href="https://travis-ci.com/github/DavideFauri/resume">
    <img alt="TravisCI" src="https://travis-ci.com/DavideFauri/resume.svg?branch=master" />
  </a>
  <a href="https://example.com">
    <img alt="Résumé (English)" src="https://img.shields.io/badge/resume%20(ENG)-pdf-green.svg" />
  </a>
  <a href="https://example.com">
    <img alt="Résumé (Italiano)" src="https://img.shields.io/badge/resume%20(ITA)-pdf-green.svg" />
  </a>
</div>

<br />


## Preview

My résumé is available in two languages: [ENG](https://example.com), [ITA](https://example.com)

|                                  Page. 1                                  |                                  Page. 2                                  |
|:-------------------------------------------------------------------------:|:-------------------------------------------------------------------------:|
| [![Résumé](https://via.placeholder.com/630x840.png)](https://example.com) | [![Résumé](https://via.placeholder.com/630x840.png)](https://example.com) |


## How to Use

### Automatic compilation and publishing through Travis CI

I've set up a `.travis.yml` configuration file to automatically compile both version of my résumé whenever a commit is made, and to publish them if the committed version has a tag.
The published PDFs should be accessible from the shields at the top of this README.

### Local compilation

For *local* compilation, a full TeX distribution is assumed. There are many distributions available, [TeX Live](tug.org/texlive) is the usual recommendation.

The usage is simple: at a command prompt, just run

```bash
$ make {your-cv}.pdf
```

and it should produce the desired output.

In the Makefile, I invoke the `latexmk` command, which is obtainable via the TeX Live package manager (`sudo tlmgr install latexmk`).

Other, more modern approaches could work better: if I had to start from scratch now, I would probably use [Tectonic](https://tectonic-typesetting.github.io).


## Credit

[**Awesome-CV**](https://github.com/posquit0/Awesome-CV) is the main project that I forked and took as a template for my resume. Thanks @posquit0, you're great!

[**aminmkhan's fork** of Awesome-CV](https://github.com/aminmkhan/Awesome-CV) is a notable fork that provides support for BibTex publications.
