# Description: The heiftojpeg Tool on Ubuntu

### Notes
- The hief tool is available on [GitHub](https://github.com/pushd/heif).


### Install Dependencies
```bash
# Install cmake
sudo apt-get install cmake 

# Install Imagemagick
sudo apt-get install php-imagick

# Install Imagemagick for header files
sudo apt-get install libmagick++-dev

# Install exiftool
sudo apt install libimage-exiftool-perl
```

### Install Hief from Source

```bash
# Get the source code
cd ~/bin/
git clone git@github.com:pushd/heif.git

# This will build the tool from source
cd heif/build && cmake .. && make

# Hief location
/bin/heif/Bins
```

### Configure hief
```bash
# Create a softlink
ln -s /home/vikash/bin/heif/Bins/heiftojpeg heiftojpeg

# Add heiftojpeg to path
```

### TODO
* None

