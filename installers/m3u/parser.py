import os
import re

# Open the M3U file
with open("m3u_file.m3u", "r") as f:
    # Read the M3U file contents
    contents = f.read()

# Split the contents by newline characters
lines = contents.split("\n")

# Initialize variables
groups = []
tvgroup = ""
movie = False
series = False
tvshow = False
other = False
title = ""

# Iterate through each line
for line in lines:
    print(f"Processing line: {line}")
    # Check if the line starts with #EXTGRP
    if line.startswith("#EXTGRP"):
        # Extract the group name
        group = line.split(":")[1]
        # Add the group name to the list of groups if it is not already present
        if group not in groups:
            groups.append(group)
    # Check if the line starts with #EXTINF
    elif line.startswith("#EXTINF"):
        # Extract the TV group name
        tvgroup = line.split(",")[0].split("\"")[1]
        # Determine the type of content (movie, series, or TV show) based on the TV group name
        if tvgroup == "Movie VOD":
            movie = True
            series = False
            tvshow = False
        elif line.startswith("#EXTINF:0 group-title=\"TV VOD\"") and re.search(r'S\d+E\d+$', line):
            movie = False
            series = True
            tvshow = False
        elif tvgroup == "TV VOD" and re.search(r"\d{4} \d{2} \d{2}", line):
            movie = False
            series = False
            tvshow = True
        elif line.startswith("#EXTINF:0 group-title=\"TV VOD\"") and not (series or tvshow):
            movie = False
            series = False
            tvshow = False
            other = True
        else:
            movie = False
            series = False
            tvshow = False
            other = False
        # Extract the title based on the type of content
        if movie:
            title = line.split("HD : ")[1] if "HD : " in line else line.split("SD : ")[1]
            # Create the directory for the content based on the TV group and title
            directory = os.path.join(tvgroup, title)
            if not os.path.exists(directory):
                os.makedirs(directory)
            print(f"Created directory: {directory}")
        elif series:
            # Get the season number by extracting the last 5th and 4th characters in the string "SXXExx"
            season = line[-5:-3]
            # Get the episode number by extracting the last 3rd and 2nd characters in the string "SXXExx"
            episode = line[-2:]
            # Create the "Season X" string
            season_str = "Season " + season
            title = line.rsplit("S", 1)[0].split("HD : ")[1].strip() if "HD : " in line else line.rsplit("S", 1)[0].split("SD : ")[1].strip()
            # Create the season directory
            season_dir = os.path.join(tvgroup, title, title + " " + season_str)  # use title + " " + season_str as the directory name
            if not os.path.exists(season_dir):
                os.makedirs(season_dir)
            print(f"Created directory: {season_dir}")
        elif tvshow:
            # Extract the date
            # Use regex to extract the date from
            date_regex = r"\d{4} \d{2} \d{2}"
            date = re.search(date_regex, line).group()
            # Format the date as "YYYY MM DD"
            date_formatted = " ".join(date)
            # Get the title by extracting the text before the date in the line
            title = line.split(",")[1][5:].split(date)[0][:-1]
            # Create the strm variable
            strm = line.split("HD : ")[1] if "HD : " in line else line.split("SD : ")[1]
            # Create the directory for the content based on the TV group and title
            directory = os.path.join(tvgroup, title)
            if not os.path.exists(directory):
                os.makedirs(directory)
            print(f"Created directory: {directory}")
        elif other:
            title = line.split("HD : ")[1] if "HD : " in line else line.split("SD : ")[1]
            # Create the directory for the content based on the TV group and title
            directory = os.path.join(tvgroup, title)
            if not os.path.exists(directory):
                os.makedirs(directory)
            print(f"Created directory: {directory}")
            filepath = os.path.join(directory, title + ".strm")
    # Check if the line is a URL
    elif line.startswith("http"):
        # Create the file path
        if series:
            filepath = os.path.join(season_dir, title + " S" + season + "E" + episode + ".strm")  # use title + " S" + season + "E" + episode + ".strm" as the file name
        elif tvshow:
            filepath = os.path.join(directory, strm + ".strm")
        elif movie:
            filepath = os.path.join(directory, title + ".strm")
        elif other:
            filepath = os.path.join(directory, title + ".strm")
        # Write the URL to the file
        with open(filepath, "w") as f:
            f.write(line)
        print(f"Created file: {filepath}")

print(f"Groups: {groups}")
