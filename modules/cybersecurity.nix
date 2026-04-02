{pkgs, ...}: {
  home.packages = with pkgs; [
    # Recon / OSINT
    amass
    subfinder
    assetfinder
    nuclei
    httpx
    gau
    theharvester
    gowitness
    gitleaks
    sherlock
    holehe
    zgrab2

    # Vulnerability scanning & exploitation
    nmap
    masscan
    rustscan
    nikto
    sqlmap
    metasploit
    # burpsuite
    # zap

    # Wordlists / Payloads
    seclists
    payloadsallthethings

    # Brute force / password cracking
    hashcat
    john
    thc-hydra

    # Forensics & Incident Response
    sleuthkit
    # autopsy
    volatility3
    foremost
    testdisk
    ddrescue
    # chkrootkit
    exiftool

    # Malware analysis / Reverse engineering
    # ghidra
    radare2
    yara
    binwalk
    apktool
    frida-tools
    pwntools

    # Networking / Monitoring / MITM
    wireshark
    tcpdump
    mitmproxy
    bettercap
    ettercap
    responder
    snort
    suricata

    # DoS & network stress-testing
    slowhttptest
    thc-ipv6
  ];
}
