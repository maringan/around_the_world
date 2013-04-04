# Around the word [![Build Status](https://travis-ci.org/maringan/around_the_world.png)](https://travis-ci.org/maringan/around_the_world)

Awesome tcp server

## Quick start
You must clone this repo:

```
  git clone git@github.com:maringan/around_the_world.git
```
then:

```
  cd around_the_world && bundle
```
now you can run the server:

```
  ruby server.rb
```
server should run on port 10000

## Usage
When server is running, you can connect to server thorugh telnet client:
```
  telnet 0 10000
```
then you can write country code e.g. PL and you get country name:
```
Trying 0.0.0.0...
Connected to 0.
Escape character is '^]'.
PL
Poland
```



