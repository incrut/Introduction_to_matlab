fileName = 'dna.txt';

FID = fopen(fileName);  %opening a file
data = textscan(FID,'%s');
fclose(FID);
stringData = string(data{:});   %taking it as an array


for i = stringData  %using a for loop creating one big string from an array variable
    allStr = strjoin(i);
end

T7 = "taatacgactcactatagg"; % Naming a variables (Plasmid Sequences)
SP6 = "atttaggtgacactatag";
T3 = "atttaggtgacactatag";
M13F = "gttgtaaaacgacggccagt";
M13R = "tcacacaggaaacagctatga";
AP4 = "cccctgtgaggaact";
U19 = "gttttcccagtcacgacgt";
BGH = "tgtgccttctagttgccagccatctgttgtttgcccctcccccgtgccttccttgaccctggaaggtgccactcccactgtcctttcctaataaaatgaggaaattgcatcgcattgtctgagtaggtgtcattctattctggggggtggggtggggcaggacagcaagggggaggattgggaagacaatagcaggcatgctggggatgcggtgggctctatggc";

counting = [];  %creating a counting matrix to count how many times are sequences in a string
places = [];    %creating a places matrix to note where these sequences are located

for i = [T7 SP6 T3 M13F M13R AP4 U19 BGH]   %using a for loop to count each sequence one by other

    counter = count(allStr, i); %counting
    counting = [counting counter];  %appening a matrix with a value of numbers of a certain plasmid sequence
    placer = strfind(allStr, i);    %searching for places
    places = [places placer];   %appending a matrix with values of places where sequences are located
    

end

disp(counting);
disp(places);