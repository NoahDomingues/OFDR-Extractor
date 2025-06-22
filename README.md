# Operation Flashpoint Game Extractor
A simple extraction tool for unpacking **Operation Flashpoint**'s game files. 🐉

[<img src="https://github.com/user-attachments/assets/63ee6f6f-5b81-4b77-b522-a6a9b7046639">](https://discord.gg/Z88NnTgpWU)

## 🐉 OFP Game Extractor v1.1

OFP Extractor is a simple tool to unpack the game files of **[Operation Flashpoint: Dragon Rising](https://en.wikipedia.org/wiki/Operation_Flashpoint:_Dragon_Rising)** and **[Operation Flashpoint: Red River](https://en.wikipedia.org/wiki/Operation_Flashpoint:_Red_River)**, both realistic, tactical mil-sim shooter games released by [Codemasters](https://www.codemasters.com) in 2009 and 2011 respectively. This tool is designed to decompress, decrypt, and extract files from the `win_000` archives in the game installation folder (inside these archives is where most of the game's content is stored).

Download the `OFP Extractor.exe` file below, place it in your game installation folder, and run it. The files will be extracted to the `_extract` folder in your game installation directory. There will be approximately 5GB of extracted files on total (slightly more than 5GB) for Dragon Rising, and under 3GB for Red River.

Currently, **some files extracted by this tool will be corrupted** to a degree, particularly larger XML files (over 256KB). Most of the files I have been able to check (other XMLs, and audio files) have remained intact, however.

Also, the tool does not maintain the directory structure of extracted files higher than 1 level. So you will have to move them about manually to put them into the right folder structure inside `/data_win` to make the game read them.

Once you have modified the extracted files, **you must put them inside the correct directory in the `/data_win` folder for the game to read them**. The extraction tool will ask you at the end of the extraction process if you would like it to create these folders to help you.

## 🛠️ OFDR/OFRR Modding

The extraction tool can extract the following file types from the game, which you can modify to make changes to the game. Some files will require special software programs to open/modify, some of which I have also listed.

- XML config files (`.xml`) - [Windows Notepad](https://apps.microsoft.com/detail/9MSMLRH6LZF3) (or any other text editor), these are the easiest files to modify (binary XMLs will require conversion prior to editing, using [Ego FIle Converter](https://p2t5r.itch.io/ego-file-converter))
- Audio/sounds (`.fsb`) - [Game Extractor](https://sourceforge.net/projects/gameextractor/)
- Havok 3D skeletons/animations (`.hkx`) - [Havok Content Tools 2012](https://www.softpedia.com/get/Programming/Other-Programming-Files/Havok-Content-Tools.shtml#download)
- 3D model bone maps (`.bm`)
- DirectX index buffers (`.ib`)
- DirectX vertex buffers (`.vb`)
- Textures (`.stf`) - use a [Hex Editor](https://mh-nexus.de/en/hxd/) to convert to `.dds` format, then open with [GIMP](https://gimp.org) (free) or [Adobe Photoshop](https://www.adobe.com/products/photoshop.html) (paid)
- Terrains/terrain textures (`.tpk`) - [Ego File Converter](https://p2t5r.itch.io/ego-file-converter) (may not work)
- Language data files (`.lng`) - [Ego Language Editor](https://p2t5r.itch.io/ego-language-editor)
- Jpak archives (`.jpk`) - [Ego JPK Archiver](https://p2t5r.itch.io/ego-jpk-archiver)
- User Interface (UI) files (`.fui`)
- Fragment shader data files (`.fpo`)
- Vertex shader data files (`.vpo`)
- Unknown hints files (`.hints`)
- Unknown metadata files, possibly object metadata (`.met`)

**Any of these files can be opened using a [Hex Editor](https://mh-nexus.de/en/hxd/) to view the file's basic binary data, however.**

## 📥 Download

Only the code used by the extractor is available on GitHub. To download the tool itself, you must join the **[Discord server](https://discord.gg/Z88NnTgpWU)**, navigate to the **#🛠game-unpacker-tool** channel, and download the `.exe` application that you can run.

[<img src="https://github.com/user-attachments/assets/f61046f5-1dc5-4b0c-87f8-4a94d6cbac96">](https://discord.gg/Z88NnTgpWU)

If you have any issues using the tool, let me know in the Discord server's **#⁠🌐tech-support** or **#⁠💬modding-discussion** channel.

I will continue working on this tool to try to fix the issues, and if there is any way you can contribute or help fix what's wrong with the tool that would be amazing. But in the meantime... enjoy! =)

**⭐ If this tool was of any use to you, please consider giving it a Star - it would make my day! ⭐**

#
OFP Extractor is based on [QuickBMS](https://aluigi.altervista.org/quickbms.htm) by [Aluigi](https://twitter.com/luigi_auriemma). Thank you to TemplarGFX, tvig0r0us, and [Jaum](https://github.com/joaopb0) for helping out with this project!

<div align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&height=100&section=footer" />
</div>
