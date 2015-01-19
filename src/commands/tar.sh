# Description: tar - The GNU version of the tar archiving utility to convert a group of files into an archive.

# Notes
# 1. An archive is a single file that contains any number of individual files plus information to allow them to be
#    restored to their original form by one or more extraction programs.
# 2. Archives that have been created with tar are commonly referred to as tarballs.
# 3. The tar command does not perform compression by default.

# Common Examples
tar -cvf dir.tar dir1 dir2
tar -xavf archive.tar.bz2
tar -xf archive.tar.gz -C /target/directory

# Examples with details
# Archive commands
# 1. It it not necessary that the new file have the .tar extension; however, the use of this extension can be very
#    convenient because it allows the type of file to be visually identified.
tar -cf archive.tar file1 file2                 # Use -c flag to create an archive and -f flag to specify the next
                                                # argument as the archive name. It is necessary, however, that
                                                # the -f option be the final option in a sequence of contiguous,
                                                # single-letter options; otherwise, the system will become confused
                                                # as to the desired name for the new file and will use the next option
                                                # in the sequence as the name.
tar -cvf archive.tar file1 file2 file3          # The -v flag is for verbose mode. It displays a list of the files that
                                                # are included in the archive.
tar -cvf dir.tar dir1 dir2                      # Tar can also be used to make archives from the contents of one or
                                                # more directories. The result is recursive.
tar -cvf archive.tar dir*                       # Wildcards can also be used.
tar -cf *                                       # Even this will work but the first input through * will be the name of
                                                # the archive file.
tar -cvf archive.tar --remove-files file2 file3 # By default, tar creates an archive of copies of the original files
                                                # and/or directories, and the originals are retained. However, they can
                                                # be removed when using tar by adding the --remove-files option.
tar -cvjf archive.tar.bz2 file1 file2 file3     # The flags -j (for bzip2), -z (for gzip) and -Z (for compress) can be
                                                # used to compress along with archiving.

# Extract Commands
# 1. Confirm that sufficient space is available on the hard disk drive (HDD).
# 2. It is better to move to an empty directory (which usually involves creating one with an appropriate name) to
#    prevent the reconstituted files from cluttering up the current directory and overwriting any files or directories
#    with same names that are in it.
# 3. In addition, if the archive has been compressed, it must first be decompressed using the appropriate decompression
#    program (which can usually be determined by the filename extension).
tar -xavf archive.tar.bz2                       # The -x (for extract) and -f options are required. The -a flag use
                                                # archive suffix to determine the compression program.
tar -xvf archive.tar.bz2                        # Even this works ie without -a flag
tar -xjvf archive.tar.bz2                       # The -j flag is to use a particular decompression algorithm.
tar -rf archive.tar file4                       # Use -r flag to add a particular file to an existing archive.
                                                # Note: It CANNOT update compressed archives.
tar -f archive.tar --delete file1 file2         # The --delete option allows specified files to be completely removed
                                                # from a tar file (except when the tar file is on magnetic tape).
                                                # NOTE: It CANNOT delete from a compressed file.
tar -tf archive.tar.bz2                         # The -t option tells tar to list the contents of an uncompressed
                                                # archive without performing an extraction.
tar -uf archive.tar file2 file3                 # The -u or --update flag to only append files newer than copy in
                                                # archive. Note: It CANNOT update a compressed archive.
tar -xf archive.tar.gz -C /target/directory     # -C to extract to a different directory than the current one

# Cool Tricks
# None

# TODO
# None
