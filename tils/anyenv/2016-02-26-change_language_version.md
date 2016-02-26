# Change language version
 
_Category: anyenv_
_Generated on 2016-02-26_

1. *env shell
1. *env local
1. *env global

## *env shell

Temporary change version

```
$ ruby -v
ruby 1.9.3p484 (...)
$ rbenv shell 2.0.0-p353
$ ruby -v
ruby 2.0.0p353 (...)
```

## *env local

Like shell but writes version in a .*-version file inside cwd

```
$ ruby -v
ruby 1.9.3p484 (...)
$ rbenv local 2.0.0-p353
$ ruby -v
ruby 2.0.0p353 (...)
```

## *env global

Like local but global. Global settings respect .*-version if present

```
$ ruby -v
ruby 1.9.3p484 (...)
$ rbenv global 2.0.0-p353
$ ruby -v
ruby 2.0.0p353 (...)
$ echo "1.9.3p484" > .ruby-version
$ rbenv global 2.0.0-p353
$ ruby -v
ruby 1.9.3p484 (...)
```
