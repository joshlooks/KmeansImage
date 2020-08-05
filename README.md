# KmeansImage
A fast implementation of k-means clustering in MATLAB used to reduce the number of colours in an inputted image to a user decided number.

## Usage
To use, simply download the repository and run the ConvertImage file from MATLAB. The user will be prompted to enter the filepath to the image desired to be read (by default the Rangitoto.jpg image in the project directory is selected). The user will then be prompted to enter the required number of colours in the outputted image. The image is saved to the project directory.

The project also displays the original image, the outputted image, and a 3D scatter plot showing the distribution of RGB values of the pixels in the input image. 

Example outputs are included in the source directory.

## Methods
A brief description of the .m files is listed below (full details are in the file headers).
* AssignToClusters
	* Assigns pixels of an image to the closest cluster
* ConvertImage
	* Main script, calls other functions to apply the k-means algorithm
	  to the image
* CreateKColourImage
	* Using an array of pixel assignments, and the corresponding     
        cluster values, creates an RGB array for the output image
* GetRGBValuesForPoints
	* Returns the RGB values of inputted pixels from the image
* KMeansRGB
	* K-means clustering algorithm on the RGB values of the image
* SelectKRandomPoints
	* Quickly chooses k random pixels in an image
* UpdateMeans
	* Updates the cluster mean based on which pixels have now been 	  associated with it 


