What
====

Convert and import XML from data.stortinget.no

Usage
=====

    $ bin/hdo-converter --app-root /src/hdo-site all

Caveats
=======

Right now we're executing script/import from hdo-site to perform the import. That means running this with bundler may fail if the gems don't match. Don't do that.