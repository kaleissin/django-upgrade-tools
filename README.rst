django-upgrade-tools
====================

A collection of tools to aid in upgrading from one version of django to
another.

If you need to upgrade to django N, look in the directory djangoN

django1.5
---------

fixurls_django1.5.bash
    Dependencies: bash, gnu sed

    - Adds {% load url from future %} at the end of the first line
    - {% url foo bar %} -> {% url 'foo' bar %}
