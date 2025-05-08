# OFDR-Extractor
A simple extraction tool for unpacking Operation Flashpoint: Dragon Rising's game files. 🐉


## OFDR Game Extractor v1.0 

Here is the first release of my Game Extractor for **Operation Flashpoint: Dragon Rising**, a 2009 tactical mil-sim shooter game released by Codemasters in 2009. This tool is designed to decompress, decrypt, and extract files from the ~~win_000~~ archives in the game installation folder (inside which most of the game content is stored). 

Download the .exe below, place it in your game installation folder, and run it. The files will be extracted to the _extract folder in your game installation directory. There will be approximately 5GB of extracted files on total (slightly above 5GB).

Curently, **some files extracted by this tool will be corrupted** to a degree, particularly larger XML files (over 256KB). Most of the files I have been able to check (other XMLs, and audio files) have remained intact, however.

Also, the tool does not maintain the directory structure of extracted files higher than 1 level. So you will have to move them about manually to put them into the right folder structure inside /data_win to make the game read them.

Once you have modified the extracted files, you must put them inside the correct directory in the /data_win folder for the game to read them. The Extraction tool will ask you at the end of the extraction process if you would like it to create these folders to help you.

## Download

Only the code used by the extractor is available on GitHub. To download the tool itself, you must join the [Discord server](https://discord.gg/Z88NnTgpWU) and navigate to the **#🛠game-unpacker-tool** channel to download the .exe application that you can run.

![image](https://github.com/user-attachments/assets/f61046f5-1dc5-4b0c-87f8-4a94d6cbac96)(https://discord.gg/Z88NnTgpWU)

If you have any issues, let me know in the Discord server's **#⁠🌐tech-support** or ⁠**#💬modding-discussion channel**.

I will continue working on this tool to try to fix the issues, but in the meantime... enjoy! =)
