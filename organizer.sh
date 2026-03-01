#!/bin/bash
mkdir -p fastqs
for i in {1..10}
do
	echo "this is sample number $i" > "fastqs/sample_$i.fastq"
done

echo "Created 10 FASTQ files in fastqs/ directory:"
ls -la fastqs/
echo -e "\nContent check (first 2 files):"
head -n 1 fastqs/sample_1.fastq fastqs/sample_2.fastq

