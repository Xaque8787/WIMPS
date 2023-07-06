import os
import re

def sanitize_title(title):
    return re.sub(r'[\\/:*?"<>|]', '', title)

def parse_m3u(file_path):
    with open(file_path) as f:
        lines = f.readlines()

    movies = []
    for i, line in enumerate(lines):
        if line.startswith('#EXTINF'):
            movie_info = line.split(',')
            title = movie_info[1].strip().replace("HD : ", "")
            title = sanitize_title(title)
            url = lines[i + 2].strip()
            movies.append((title, url))
    return movies

def create_directories_and_strm_files(movies):
    for movie in movies:
        title, url = movie
        movie_dir = f'movies/{title}'
        strm_file = f'{movie_dir}/{title}.strm'

        os.makedirs(movie_dir, exist_ok=True)

        with open(strm_file, 'w') as f:
            f.write(url)

if __name__ == '__main__':
    movies = parse_m3u('movies.m3u')
    create_directories_and_strm_files(movies)
