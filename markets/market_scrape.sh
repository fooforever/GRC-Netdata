# Scraping the market stats for Gridcoin
function grc-value {
    curl "https://api.coinmarketcap.com/v1/ticker/gridcoin/" > /home/gridcoin/.GridcoinResearch/gridcoin_cmc.json
    # curl "https://cryptofresh.com/api/asset/markets?asset=OPEN.GRC" > gridcoin_cryptofresh.json
}

# Continuously running the script every x seconds
while true
do
 grc-value
 sleep 15
done

# Start this script with the following:
# source ./market_scrape.sh >/dev/null 2>&1 < /dev/null &