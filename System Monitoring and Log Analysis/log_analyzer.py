import re
from collections import Counter

# Path to the log file
log_file = "access.log"

# Initialize counters
error_404 = 0
most_requested = Counter()
ip_addresses = Counter()

with open(log_file, "r") as file:
    for line in file:
        # Check for 404 errors
        if " 404 " in line:
            error_404 += 1
        
        # Extract requested pages
        match = re.search(r'"GET (.*?) HTTP/', line)
        if match:
            most_requested[match.group(1)] += 1
        
        # Extract IP addresses
        ip = line.split(" ")[0]
        ip_addresses[ip] += 1

# Output results
print(f"Total 404 Errors: {error_404}")
print("Most Requested Pages:")
for page, count in most_requested.most_common(5):
    print(f"{page}: {count} requests")

print("Top IP Addresses:")
for ip, count in ip_addresses.most_common(5):
    print(f"{ip}: {count} requests")
