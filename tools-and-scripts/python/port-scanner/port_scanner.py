import socket
def scan_port(target, port):
    """
    Attempts to connect to a specific port on the target.
    Returns True if open, False otherwise
    """

    try:
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        s.settimeout(1)
        result = s.connect_ex((target, port))
        s.close()
        if result == 0:
            return True
        else:
            return False

    except socket.error:
        return False

def main():
    print("=== Simple Port Scanner ===")

    target = input("Enter IP or domain: " )
    start_port = int(input("Enter start port: "))
    end_port = int(input("Enter end port: "))

    print(f"\nScanning {target} from {start_port} to {end_port}\n")
    for port in range(start_port, end_port + 1):
        if scan_port(target, port):
            print(f"[+] Port {port} is OPEN")

    print("\nScan complete.")
if __name__ == "__main__":
    main()
