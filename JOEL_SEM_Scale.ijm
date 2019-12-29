// Set JOEL SEM scale and display acquisition metadata using txt Metadata
// Author: Zhou XU
// at Monash Centre for Electron Microscopy
// Windows 10 Enterprise Ver. 1803
// ImageJ ver. 1.52g

// Created on 2018 Sep 07
// Modified on 2018 Oct 01

path = getDirectory("image");
if (path=="") exit ("path not available");
name = getInfo("image.filename");
if (name=="") exit ("name not available");
id = path + name;
txtID = replace(id, ".tif", ".txt");
txtID = replace(txtID, ".jpg", ".txt");

lineseparator = ",\n\t";
cellseparator = " ";

lines=split(File.openAsString(txtID), lineseparator);

for (i=0; i<lengthOf(lines); i++) 
{
	items=split(lines[i], cellseparator);
	for (j=1; j<lengthOf(items); j++)
if (items[0]=="$$SM_MICRON_BAR") idBarPixel = i;
if (items[0]=="$$SM_MICRON_MARKER") idBarLength = i;
	}
	

barPixel = split(lines[idBarPixel], cellseparator);
barLength = split(lines[idBarLength], cellseparator); 

barPixel = barPixel[1];
barLength = barLength[1];

barLengthNum = substring(barLength, 0 ,lengthOf(barLength)-2);
barLengthUnit= substring(barLength, lengthOf(barLength)-2);
pixelSize = parseFloat(barLengthNum)/parseFloat(barPixel);

setVoxelSize(pixelSize, pixelSize, 1, barLengthUnit);