PoshHaste
=========

Powershell Wrappar around the hastebin.com api.

Usage
----

```
  Invoke-Haste "what's up"
```


Accepts pipelined input:

```
cat whatsup.text | Invoke-Haste
```


You can also override the Hastebin URI if you're running your own server:

```
cat whatsup.text | Invoke-Haste -serviceUrl http://myserver.com
```

```
get-help invoke-haste
```

For more help.
