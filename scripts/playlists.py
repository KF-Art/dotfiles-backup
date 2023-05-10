import csv
import json
from datetime import datetime
from concurrent.futures import ThreadPoolExecutor
import httpx
from tqdm import tqdm

invidious_api = input('Enter the Invidious API url: ') + 'api/v1/videos/'
csv_file = input('Enter the csv file path: ')

video_data = []
with open(csv_file, 'r') as csvfile:
    reader = csv.reader(csvfile)
    next(reader)  # skip header row
    video_ids = [row[0].strip() for row in reader if len(row) > 0]

def fetch_video_details(video_id):
    with httpx.Client() as client:
        response = client.get(invidious_api + video_id)
        if response.status_code == 200:
            video = response.json()
            return {
                "videoId": video["videoId"],
                "title": video["title"],
                "author": video["author"],
                "authorId": video["authorId"],
                "published": "",
                "description": "",
                "viewCount": video["viewCount"],
                "lengthSeconds": video["lengthSeconds"],
                "timeAdded": int(datetime.now().replace(second=0, microsecond=0).timestamp()) * 1000,
                "isLive": False,
                "paid": False,
                "type": "video"
            }
        else:
            print(f'Failed to fetch video data for video ID {video_id}. Status code: {response.status_code}')
            print(response.text)
            return None

with ThreadPoolExecutor() as executor:
    for result in tqdm(executor.map(fetch_video_details, video_ids), desc='Fetching video details', total=len(video_ids)):
        if result is not None:
            video_data.append(result)

playlist_data = {"playlistName": "Favorites", "videos": video_data}
with open('playlist_data.db', 'w') as outfile:
    outfile.write(json.dumps([playlist_data]))
