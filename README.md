
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
- m3u VOD list. If you only have a single m3u that contains both live tv channels and VOD, then you will need to first use an editor to filter those out.
- ProntonMail account to use ProtonVPN. (optional for use with QbitTorrent)
- Usenet and Indexer account if using Sabnzb for *arr apps.
- this script will install these services/apps as pre requirements; pyton3, node.js, yarn, go, wget, 7zip

# Screen Shots
WIMPSPortal landing page with multiple services showing. Can be customized.
![wimpsscrn1](https://github.com/Xaque8787/WIMPS/assets/65569846/dea76cb5-d0c9-4da7-846e-ec2813740fb6)
Sonarr and qBittorrent examples
![wimpsscrn5](https://github.com/Xaque8787/WIMPS/assets/65569846/64699b4c-2751-4b45-995f-36ffd923075a)
![wimpsscrn4](https://github.com/Xaque8787/WIMPS/assets/65569846/237918d7-561f-4225-9347-ccd852d71ca6)
Reverse proxy setup - automatically creates a working caddyfile based on your provided info.
![wimpsscrn3](https://github.com/Xaque8787/WIMPS/assets/65569846/81fe4acf-c096-4043-a0cc-137f83c69692)
WIMPS main menu - you can select multiple items before running install command, and WIMPS can be ran multilpe times to add features as you build out your server.
![wimpsscrn6](https://github.com/Xaque8787/WIMPS/assets/65569846/238dce3c-e4ce-4b18-811e-9a5b002c3f3d)




![wimpsscrn2](https://github.com/Xaque8787/WIMPS/assets/65569846/9d4aa142-c00c-4bc7-9a38-c71eeea53e14)





