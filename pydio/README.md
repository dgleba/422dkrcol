# Pydio Cells and Pydio 8

# .

# Pydio Cells

# Status:

No windows sync client yet as of 2019 Aug.

## Commands

```
cd /srv/dkr/422dkrcol/data/pydio/cells
sudo chmod ugo+w pydio.json


```

## Setup notes

edited pydio.json to remove :8080 from url in 4 spots.

eg:

```
       "web": {
          "http": "https://pyd-108-168-7-24.nip.io/auth/dex"
        }

```
