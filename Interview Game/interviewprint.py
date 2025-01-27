global character_name
character_name = "Mochi"
global character_mood
character_mood = "Neutral"
global lines_since_character
lines_since_character = -1

def flatten_text(*text):
    content : str = ""
    for i in range(len(text)):
        if i != 0:
            content += " "
        content += str(text[i])
    return content

def print_character_dialogue(*text, mood = None, name = None):
    global lines_since_character
    global character_mood
    global character_name
    if mood: character_mood = mood
    if name: character_name = name
    if lines_since_character != 0:
        print(f"\n{character_name} ({character_mood}):")
    print(f" {flatten_text(*text)}")
    lines_since_character = 0

def print_player_options(*text):
    global lines_since_character
    if (lines_since_character < 1):
        print("Select a response to ask:")
    lines_since_character += 1
    print(f" {lines_since_character} - {flatten_text(*text)}")
