#!/bin/sh

find . -not -path '*/\.*' -type f | grep -v '_spec.rb' | grep -v '\/spec\/' | grep -v '\/cache\/' | grep -v '\/vendor\/' | grep -v '\/target\/' | grep -v 'Test.java' | grep -v '\/test\/' | grep -v '\/test-resources\/' | grep -v '\/go-command-repo\/' | grep -v '\/installers\/' | grep -v '\/local-maven-repo\/' | grep -v 'localivy' | grep -v manual-testing | grep -v '\/assets\/' | grep -v '\/tools\/' | grep -v 'tfssdk'

