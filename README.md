# RAL

Runtime abstraction layer

## Usage

A simple usage example:

    import 'package:RAL/html_i.dart'
    if (dart.library.io) 'package:RAL/io/html_io.dart'
    if (dart.library.html) 'dart:html' as html;

    main() {
      new html.MessageEvent("PreviousSession", data: JSON.encode({}));
    }

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: http://example.com/issues/replaceme


[![Build Status](https://travis-ci.org/EKibort/RAL.svg?branch=master)](https://travis-ci.org/EKibort/RAL)