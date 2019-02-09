# Description: Wget - The non-interactive network downloader.

# Notes
# 1. It supports HTTP, HTTPS, and FTP protocols, as well as retrieval through HTTP proxies.

# Common Examples
wget <URL>
wget --no-clobber --convert-links --random-wait -r -p -E -e robots=off -U mozilla http://site/path/


# Examples with details
wget <URL>                                          # Gets a file from the <URL> to the present directory.
wget -c http://www.example.com/linux.iso            # The -c parameter will continue the download after any disruptions.
wget -U mozilla http://www.example.com/image.jpg    # Use mozilla user-agent string. Some websites do not allow you to
                                                    # download any files using a download manager. The -u will pass wget
                                                    # off as being a Mozilla web browser.
wget -r -p http://www.example.com                   # Use -r option for recursive, -p option tells wget to include all
                                                    # files, including images. This will obey robots.txt.
wget -r -p -e robots=off http://www.example.com     # Add -e robots=off to NOT obey robot.txt.

# Cool Tricks
wget --no-clobber --convert-links --random-wait -r -p -E -e robots=off -U mozilla http://site/path/
# - Option --no-clobber: If a file is downloaded more than once in the same directory, wget's behaviour depends on a few
#   options, including -nc.  In certain cases, the local file will be clobbered, or overwritten, upon repeated download.
#   Use --no-clobber will preserve the locally downloaded file.
# - Option --convert-links: After the download is complete, convert the links in the document to make them suitable for
#   local viewing.  This affects not only the visible hyperlinks, but any part of the document that links to external
#   content, such as embedded images, links to style sheets, hyperlinks to non-HTML content, etc.
# - Option --random-wait: A lot of the website owners will not like the fact that you are downloading their entire site.
#   If the server sees that you are downloading a large amount of files, it may automatically add you to it's black
#   list. The way around this is to wait a few seconds after every download. The way to do this using wget is by
#   including --wait=X (where X is the amount of seconds.)
# - Option -r: Use -r option for recursive
# - Option -p: Use -p option to include all files, including images.
# - Option -E: If a file of type application/xhtml+xml or text/html is downloaded and the URL does not end with the
#   regexp \.[Hh][Tt][Mm][Ll]?, this option will cause the suffix .html to be appended to the local filename.  This is
#   useful, for instance, when you're mirroring a remote site that uses .asp pages.
# - Option -e robots=off: Use -e robots=off to NOT obey robot.txt.
# - Option -U: Use mozilla user-agent string.

# TODO
# 1. Explore man pages of this command.

