# Code-for-Euclidean-Picard-modular-group-derivations

The codes and text files in this repository are all used in the derivations for the Euclidean Picard modular groups in the cases
d=2,11.

There are six text files: magma_pres_d_2.txt, magma_pres_d_11.txt,
                          Pres_and_abelianization_d_2.txt, Pres_and_abelianization_d_11.txt,
                          Cygan_distances_d_2.txt, Cygan_distances_d_11.txt
                         
The files mamga_pres_d_(-).txt correspond to raw output for MATLAB scripts obtainining relations for d=2,11.  These are set up
so that one just needs to copy and past the text into his/her MAGMA shell to perform computations with the group.

The files Pres_and_abelianization_d_(-).txt are simplified presentations for the Picard modular groups in the cases
d=2,11.  The MAGMA code used for these simplifications, and the code used to obtain the abelianizations of the groups
are in the text files.  These codes are clearly separated from the resulting outputs, so one can just copy the code into
his/her MAGMA shell to get the corresponding output.

The files Cygan_distances_d_(-).txt, contains the work done for the covering argument.  These files contain the vertices defining
each convex piece in D_{infinity}, and the Cygan distances from point in the boundary at infinity.  These distances tell us that
convex piece is contained in the extended Cygan ball of interest.

All of the scripts in this repository are MATLAB scripts.  The use of each script is denoted in comments in the corresponding
script, with the exception of scripts beginning with depth.  For these scripts, if the script is named depth(n).m, this corresponds to the matrices and lifts corresponding to depth n points in the case d=2.  If the script is named depth(n)_11.m, this corresponds
to the matrices and lifts corresponding to depth n points in the case d=11.  The scripts depths.m and depths_11.m are the consolidations of the depth scripts in the cases d=2 and d=11 respectively.

Finally, there is a pdf containing a list of O_11-rational points and matrices that could not fit in the original paper.
