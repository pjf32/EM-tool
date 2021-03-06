// Set Hitachi SEM scale and display acquisition metadata using txt Metadata
// Author: Zhou XU
// at Monash Centre for Electron Microscopy
// Windows 10 Enterprise Ver. 1803
// ImageJ ver. 1.52g

// Copyright 2019 Zhou Xu
/* This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.
This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.
You should have received a copy of the GNU General Public License along with this program; if not, If not, see <http://www.gnu.org/licenses/>. */

// Created on 2018 Sep 07
// Modified on 2018 Oct 01

path = getDirectory("image");
if (path=="") exit ("path not available");
name = getInfo("image.filename");
if (name=="") exit ("name not available");
id = path + name;
txtID = replace(id, ".tif", ".txt");
txtID = replace(txtID, ".jpg", ".txt");

OriginalText=File.openAsString(txtID);

//Strip out null characters
ModifiedText = OriginalText.replace("\0", '');

lineseparator = "\n\n";
cellseparator = "=";

lines=split(ModifiedText, lineseparator);

for (i=0; i<lengthOf(lines); i++) 
{
	items=split(lines[i], cellseparator);
	
	for (j=1; j<lengthOf(items); j++)
	if (items[0]=="PixelSize") idPixelSize = i;

}

linepixelSize = split(lines[idPixelSize], cellseparator);
pixelSize=linepixelSize[1];

LengthUnit = "nm";

if (pixelSize >= 1000 ) 
{
	pixelSize=parseFloat(pixelSize)/1000;
	LengthUnit = "µm";
}
if (pixelSize >= 10000 ) 
{
	pixelSize=parseFloat(pixelSize)/1000000;
	LengthUnit = "mm";
}



setVoxelSize(pixelSize, pixelSize, 1, LengthUnit);
