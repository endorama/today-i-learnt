# Check website response time
 
_Category: shell_  
_Generated on 2016-02-25_

[source](http://www.shellhacks.com/en/Check-a-Website-Response-Time-from-the-Linux-Command-Line)

## Total website response time

```
$ curl -s -w %{time_total}\\n -o /dev/null http://www.shellhacks.com
0,117
```

## Detailed timing of a website response

```
$ curl -s -w '\nLookup time:\t%{time_namelookup}\nConnect time:\t%{time_connect}\nAppCon time:\t%{time_appconnect}\nRedirect time:\t%{time_redirect}\nPreXfer time:\t%{time_pretransfer}\nStartXfer time:\t%{time_starttransfer}\n\nTotal time:\t%{time_total}\n' -o /dev/null http://www.shellhacks.com
Lookup time:    0,003
Connect time:   0,020
AppCon time:    0,000
Redirect time:  0,000
PreXfer time:   0,020
StartXfer time: 0,963

Total time:     1,001
```

## Options
| option             | description (times in seconds)                                                                                                 |
| ------------------ | ------------------------------------------------------------------------------------------------------------------------------ |
| time_total         | time that the full operation lasted                                                                                            |
| time_namelookup    | time until DNS resolution                                                                                                      |
| time_connect       | time until the TCP connect was completed                                                                                       |
| time_pretransfer   | time until the file transfer was just about to begin                                                                           |
| time_starttransfer | time  until the first byte was just about to be transferred                                                                    |
| time_appconnect    | time until the SSL/SSH/etc connect/handshake to the remote host was completed                                                  |
| time_redirect      | time for all redirection steps include name lookup, connect, pretransfer and transfer before the final transaction was started |

 