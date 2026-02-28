import sys

def banner():
    print("-" * 40)
    print("   Subdomain Enumerator - Lab Edition")
    print("   Infrastructure Security Testing")
    print("-" * 40)

def simulate_enum(domain):
    subdomains = ['www', 'dev', 'api', 'staging', 'mail', 'vpn', 'vab-auth']
    
    print(f"[*] Target Domain: {domain}")
    print(f"[*] Loading wordlist... Done.")
    print(f"[*] Results found:\n")
    
    for sub in subdomains:
        print(f" [+] Found: {sub}.{domain}")

if __name__ == "__main__":
    banner()
    if len(sys.argv) < 2:
        print("Usage: python3 sub_enum.py <target_domain>")
        sys.exit(1)
    
    target = sys.argv[1]
    simulate_enum(target)
    print("\n[+] Scan completed.")