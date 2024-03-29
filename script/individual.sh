mkdir -p ./content


# DNSBlocklist

mkdir -p ./content/DNSBlocklist

mkdir -p ./content/DNSBlocklist/domain
wget -O  ./content/DNSBlocklist/domain/allowlist.txt https://github.com/minoplhy/DNSBlocklist/raw/main/domain/allowlist.txt
wget -O  ./content/DNSBlocklist/domain/denylist.txt https://github.com/minoplhy/DNSBlocklist/raw/main/domain/denylist.txt

mkdir -p ./content/DNSBlocklist/rpz
wget -O  ./content/DNSBlocklist/rpz/denylist.rpz https://github.com/minoplhy/DNSBlocklist/raw/main/rpz/denylist.rpz
wget -O  ./content/DNSBlocklist/rpz/allowlist.rpz https://github.com/minoplhy/DNSBlocklist/raw/main/rpz/allowlist.rpz
wget -O  ./content/DNSBlocklist/rpz/cname-cloaking.rpz https://github.com/minoplhy/DNSBlocklist/raw/main/rpz/cname-cloaking.rpz

mkdir -p ./content/DNSBlocklist/adblock
wget -O  ./content/DNSBlocklist/adblock/allowlist.txt https://github.com/minoplhy/DNSBlocklist/raw/main/adblock/allowlist.txt
wget -O  ./content/DNSBlocklist/adblock/denylist.txt https://github.com/minoplhy/DNSBlocklist/raw/main/adblock/denylist.txt

# uncategories

mkdir -p ./content/uncategories

mkdir -p ./content/uncategories/filters
wget -O  ./content/uncategories/filters/blocked.txt https://github.com/minoplhy/filters/raw/main/Resources/blocked.txt
wget -O  ./content/uncategories/filters/excluded.txt https://github.com/minoplhy/filters/raw/main/Resources/excluded.txt