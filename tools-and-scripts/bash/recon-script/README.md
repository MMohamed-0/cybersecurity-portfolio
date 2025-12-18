# Bash Recon Automation Script

 A bash-based reconnaissance script that automates basic infomation gathering using Nmap and standard Linux tools.
 Designed for learning, automation practice, and ethical local testing

## Objectives
- Practice Bash scripting fundementals
- Automate basic reconnaissance tasks
- Understand tool invocation and output handling
- Learn secure scripting and execution practices

## Tools & Enviroment
  - OS: Kali Linux
  - Shell: Bash
  - Tools:
    - nmap
    - whois
    - nslookup

## How The Script Works 
  1. Accepts a target IP or hostname as input
  2. Creates a structured output directory
  3. Runs multiple reconnaissance tools against the target:
     - Nmap for port and service discovery
     - Whois for registration infomation
     - Nslookup for DNS resolution 
  5. Saves the output of each toolinto separate, clearly named files for later analysis 

## Ethical Use
 This script was tested only against:
 - Localhost (127.0.0.1)
 - Systems I own or have permission to test

 No unauthorised scanning was performed   









