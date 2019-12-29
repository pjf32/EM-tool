# SEM Suite - an imageJ toolset for SEM image analysis

## FEI SEM/FIB measure annotation
The macro SEM_metadata_measurement is a combination of FEI_SEM_metadata_Scale and measurement/annotation.

### What does it do
The ImageJ macro is for measuring and anaylysing .TIF images acquired from FEI SEM/FIB (now part of ThermoFisher Scientific).   

FEI_SEM_metadata_Scale reads the metadata from TIFF tags embedded in the SEM images and print out the important ones in the imageJ log screen (might be useful for replicating previous experiment conditions). The scale of the image is also automatically set image scale using the scan pixel size (see the screen dump below). So dimensions can be directly measured on the screen in um or nm, auto-adjusted based on HFW. 

ImageJ_annotation annotate the length of line tool drawn on a image. Color of the annotation is auto-adjusted based on the back group color/brightness.

