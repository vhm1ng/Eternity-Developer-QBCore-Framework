# et-multicharacter
Multi Character Feature for et-Core Framework :people_holding_hands:

Added support for setting default number of characters per player per Rockstar license

# License

    QBCore Framework
    Copyright (C) 2021 Joshua Eger

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>


## Dependencies
- [et-core](https://github.com/qbcore-framework/et-core)
- [et-spawn](https://github.com/qbcore-framework/et-spawn) - Spawn selector
- [et-apartments](https://github.com/qbcore-framework/et-apartments) - For giving the player a apartment after creating a character.
- [et-clothing](https://github.com/qbcore-framework/et-clothing) - For the character creation and saving outfits.
- [et-weathersync](https://github.com/qbcore-framework/et-weathersync) - For adjusting the weather while player is creating a character.

## Screenshots
![Character Selection](https://cdn.discordapp.com/attachments/934470871333105674/1014215694394589294/unknown.png)
![Character Registration](https://cdn.discordapp.com/attachments/934470871333105674/1014215687700488304/unknown.png)

## Features
- Ability to create up to 5 characters and delete any character.
- Ability to see character information during selection.

## Installation
### Manual
- Download the script and put it in the `[qb]` directory.
- Add the following code to your server.cfg/resouces.cfg
```
ensure et-core
ensure et-multicharacter
ensure et-spawn
ensure et-apartments
ensure et-clothing
ensure et-weathersync
```
