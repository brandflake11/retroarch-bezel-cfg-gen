#!/bin/bash                                                                     

    # retroarch-bezel-cfg-gen; Generator for .cfg files for retroarch bezels 
    # Copyright (C) 2021 Brandon Hale

    # This program is free software: you can redistribute it and/or modify
    # it under the terms of the GNU General Public License as published by
    # the Free Software Foundation, either version 3 of the License, or
    # (at your option) any later version.

    # This program is distributed in the hope that it will be useful,
    # but WITHOUT ANY WARRANTY; without even the implied warranty of
    # MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    # GNU General Public License for more details.

    # You should have received a copy of the GNU General Public License
    # along with this program.  If not, see <https://www.gnu.org/licenses/>.

for i in *.png; do                                                            
    FILENAME="$(ls "$i" | sed 's/.png/.cfg/')"
    # If the .cfg file already exists, don't do this!
    if [ -e $FILENAME ]
    then
	echo "$FILENAME found"
    else
    echo "overlays = 1" >> $FILENAME
    echo >> $FILENAME               
    echo "overlay0_overlay = $i" >> $FILENAME 
    echo >> $FILENAME               
    echo "overlay0_full_screen = true" >> $FILENAME
    echo >> $FILENAME               
    echo "overlay0_descs = 0" >> $FILENAME
    echo "$FILENAME generated"
    fi
done                                                                            
                                                                                
                                       
