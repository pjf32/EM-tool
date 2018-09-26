# ImageJ_measure_annotation
The macro SEM_metadata_measurement is a combination of FEI_SEM_metadata_Scale and measurement/annotation.

# What does it do

FEI_SEM_metadata_Scale reads the metadata from TIFF tags embedded in the SEM images and print out the important ones in the imageJ log screen (might be useful for replicating previous experiment conditions). The scale of the image is also automatically set image scale using the scan pixel size (see the screen dump below). So dimensions can be directly measured on the screen in um or nm, auto-adjusted based on HFW. 

ImageJ_annotation annotate the length of line tool drawn on a image. Color of the annotation is auto-adjusted based on the back group color/brightness.

# Pre-requisites
For installation, you will need the original ImageJ + Bio-formats plugin which you can download from here. 
Original ImageJ:<br/>
https://imagej.nih.gov/ij/

Bio-Formats plugin:<br/>
https://www.openmicroscopy.org/bio-formats/

The easier way is to use the ImageJ FIJI variant (Fiji Is Just ImageJ) comes with all pre-requisites, from here:<br/>
https://fiji.sc/

# Installation and Use
1. If only annotation function is needed
Then copy the attached ImageJ_annotation.txt file to \ImageJ folder\macros and install through the menu. 
To use, open your SEM image in ImageJ. Click the macro through the menu.

2. If need to use both functions 
Add the text in SEM_metadata_measurement.txt to the end of \fiji-win64\Fiji.app\macros\StartupMacros.fiji.ijm
Then restart ImageJ
Use the shortcut 'p' to run 'FEI_SEM_metadata marco'
Use the shortcut 'n' to run 'Annotated Measurements'
Please note the shortcut keys may conflit if you have already assign to the other functions.
