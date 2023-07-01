# WIMPS
**W**indows **I**s **M**y **P**rimary **S**erver is a set of scripts to help automate a media server setup on Windows.
<p align="center" width="100%">
    <img width="33%" src="https://user-images.githubusercontent.com/65569846/216909375-0d47e743-c085-40ae-8edb-b9608f4ffbb2.png">


# Instalation
Download the repository and unzip to any location. Run the install_script, which will install a desktop icon and start menu icon. Start either as an Administrator to complete the setup.

# Available Apps
<p>Jellyfin - Media Server</p>
<p>JFA-go - Jellyfin user management app, invite users with a url link</p>
<p>Jellyseerr - Request Movies and TV SHows</p>
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
- m3u VOD list. If your m3u contains live tv channels then you will need to first use an editor to filter those out. You can use threadfin for this. (supplied with WIMPS)
- ProntonMail account to use ProtonVPN. (optional for use with QbitTorrent)
- Usenet and Indexer account if using Sabnzb for *arr apps.
- this script will install these services/apps as pre requirements; pyton3, node.js, yarn, go, wget, 7zip
