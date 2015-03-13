Ruby wrapper for fic (File Integrity Checker) using ffi

necessary to install fic:

from my repository https://build.opensuse.org/package/show/home:vpereirabr/libfic

```zypper in libfic```


=== IMPORTANT ===

Read the README https://github.com/sebastian-suse/fic/blob/master/README.md and learn how to setup the necessary keys


=== Example ===

I have the keys already configured by me

The b34f10ddc906fd7f, I get, i.e with ```fic -i -K foobar.sec.asc```

    ./bin/testlib.rb  foobar.pub.asc foobar.sec.asc b34f10ddc906fd7f README.md
