Python Port Scanner 
 
Project Overview
This project is a simple TCP port scanner written in Python. It demonstrates basic networking concepts and socket programming used during reconaissance in penetration testing

Objectives 
 - Learn how port scanning works
 - Practice Python socket programming
 - Identify open services on a target system

Tools & Technologies 
 - Python3
 - Socket Library
 - PyCharm IDE

How It Works 
 - The user inputs a target IP or domain
 - A port range is specified
 - The script attempts TCP connections to each port
 - Open ports are reported in the output

Testing Enviroment
 - Target: localhost (127.0.0.1)
 - Authorised lab enviroments only

Evidence
 Screenshots included showing:
  - Script execution in PyCharm (screenshots/run_example.png)
  - Scan results displaying open ports (screenshots/results.png)
  The screenshots demonstrate successful execution of the tool against an authorised local test enviroment (127.0.0.1). 

Future Improvements
- Multithreaded scanning
- Service detection
- Output to file

Disclaimer
  This tool was created for educational purposes only and was tested exclusively on 
  systems I own or have explicit permission to test.
