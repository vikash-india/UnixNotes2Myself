# Description: Introduction to SSL/TLS

### Uses of SSL Certificates
* Source identity verification
    - SSL is produced as proof of identity during connection establishment.
* Security against Man-in-the-Middle
    - Confidentiality and Integrity
* Client/Server Authentication
* Non-Repudiation

### History of SSL
* Technical specification of SSL 3.0 is covered in RFC 6101.
* SSL protocol for internet communication was invented by NetScape Communications in 1994.
* SSL protocol was designed by the chief scientist Taher Elgamal & an engineer Kipp Hickman of Netscape.
* Taher Elgamal is often called as the 'Father of SSL'.
* Unfortunately, all the protocol versions of SSL including the latest SSL v3 are vulnerable in some way or the other.

### History of TLS
* Technical specification of TLS 1.2 is covered in RFC 5246.
* TLS was created by IETF in 1999. 
* TLS is based on SSL. 
* TLS is a more advanced and open standard. 
* TLS solves many of the limitations that SSL had. 

### SSL/TLS 
| SSL/TLS Version   |Life Time  | Vulnerable    | RFC      |
|-------------------|-----------|---------------|----------|
| SSL 1.0           | 1994-1995 | Yes           |          |
| SSL 2.0           | 1995-2011 | Yes           |          |
| SSL 3.0           | 1996-2015 | Yes           | RFC 6101 |
| TLS 1.0 (SSL 3.1) | 1999-     | No But Avoid  | RFC 2246 |
| TLS 1.1           | 2006-     | No & Safe     | RFC 4346 |
| TLS 1.2           | 2008-     | No & Safe     | RFC 5246 |
| TLS 1.3           | 2016      | Still a Draft |          |

**Even though SSL is replaced by TLS, word SSL is used to represent both SSL and TLS protocols in general.**

### References
* [https://aboutssl.org](https://aboutssl.org)

### TODO
* None
