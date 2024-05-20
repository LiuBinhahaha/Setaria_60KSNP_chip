#!/bin/bash
workdir=/vol/liubin/data/60K_chip/maf0.05/raw_data_maf0.05
cd ${workdir}

k=(1 2 3 4 5 6 7 8 9)

parallel --joblog ${workdir}/log.out -j 9 'echo {} && admixture --cv /vol/liubin/data/60K_chip/maf0.05/all_1214_snp_indel_maf0.05_ID.bed {} -j7 | tee /vol/liubin/data/60K_chip/maf0.05/raw_data_maf0.05/log_raw{}.out' ::: "${k[@]}"
