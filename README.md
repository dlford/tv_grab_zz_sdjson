This is a simple Alpine backed Docker image that has the executable `tv_grab_zz_sdjson`.

## Quickstart

1. Create a config file:
   ```
   cache=/cache/tv_grab_zz_sdjson.cache
   channel-id-format=default
   previously-shown-format=date
   username=YOUR_USERNAME
   password=YOUR_PASSWORD
   mode=lineup
   lineup=YOUR_LINEUP
   ```
2. Run it!
   ```yml
   services:
     tv_grab_zz_sdjson:
       image: ghcr.io/dlford/tv_grab_zz_sdjson:latest
       environment:
         - TZ=YOUR_TIMEZONE
       volumes:
         - data:/data # Output location
         - config:/config # Put your config file here
         - cache:/cache # Persistent storage for cache
       command:
         - tv_grab_zz_sdjson
         - --days
         - '7'
         - --config-file
         - /config/tv_grab_zz_sdjson.conf
         - --output
         - /data/tvguide.xml
    volumes:
      data:
      config:
      cache:
   ```
