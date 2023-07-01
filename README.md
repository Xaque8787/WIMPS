# WIMPS
**W**indows **I**s **M**y **P**rimary **S**erver is a set of scripts to help automate a media server setup on Windows.
<p align="center" width="100%">
    <img width="33%" src="https://user-images.githubusercontent.com/65569846/216909375-0d47e743-c085-40ae-8edb-b9608f4ffbb2.png">


# Instalation
Download the repository and unzip to any location. Run the install_script, which will install a desktop icon and start menu icon. Start either as an Administrator to complete the setup.

# Available Apps
<p>Jellyfin - Media Server</p>
<p>JFA-go - Jellyfin user management app, invite users with a url link</p>
<p>Jellyseerr - Request Movies and TV Shows</p>
<p>SABNZB - Download client for Usenet</p>
<p>qBittorrent - Download client</p>
<p>Radarr - Movie collection manager</p>
<p>Sonarr - TV show collection manager</p>
<p>Prowlarr - Indexer manager for Sonarr and Radarr</p>
<p>Threadfin - m3u/epg manager</p>
<p>m3uparser - m3u to .strm library scripts</p>
<p>Caddy - Reverse Proxy</p>
<p>DuckDNS - Updater app for duckdns.org</p>
<p>ProtonVPN - VPN with split tunneling for use qBittorrent</p>
<p>EventGhost - system automation tool</p>
<p>notepad++ - code editor</p>
<p>Chrome - web browser</p>
<p>Firefox - web browser</p>
<p>windirstat - disk usage statistics viewer</p>


# Requirements
- public IP address (no cgnat support yet)
- port 80 and 443 forwarded from your router to the local ip address of the machine running WIMPS/reverse proxy.
- ddns subdomains for each service you'd like behind reverse proxy, WIMPS uses duckdns by default, and has a updater app included in the script. (user\current user\duckdns)
- m3u VOD list. If you only have a single m3u that contains both live tv channels and VOD, then you will need to first use an editor to filter those out. You can use threadfin for this. (supplied with WIMPS)
- ProntonMail account to use ProtonVPN. (optional for use with QbitTorrent)
- Usenet and Indexer account if using Sabnzb for *arr apps.
- this script will install these services/apps as pre requirements; pyton3, node.js, yarn, go, wget, 7zip

# Screen Shots
<b>Landing page with multiple services showing. Can be customized</b>
![wimpsscrn1](https://github.com/Xaque8787/WIMPS/assets/65569846/56a5660e-eac4-45ef-bd72-39cfc06a989f)
<b>Sonarr in iframe - not all servies work in iframe, they will load in new tab or window.</b>
![wimpsscrn4](https://github.com/Xaque8787/WIMPS/assets/65569846/03722a31-1fc5-43e3-8078-2f07f8920889)
<b>Reverse proxy setup - automatically creates a working caddyfile based on your provided info.</b>
![wimpsscrn3](https://github.com/Xaque8787/WIMPS/assets/65569846/fd5c661e-b187-4fe9-a1b8-6129e643cfc7)
<b>WIMPS main menu - can select multiple items, and can be ran multilpe times to add features as you build.</b>
![wimpsscrn2](https://github.com/Xaque8787/WIMPS/assets/65569846/34ea2c89-75e6-4c40-b230-c01dcb4f8c8c)

