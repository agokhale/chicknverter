#!//bin/sh -ex


stem=$1 
echo $stem;

ls ${stem}*
sleep 1

odir=renames${gTODAY}

mkdir $odir

cp ${stem}-F_Silkscreen.gbr ${odir}/${stem}.gto
cp ${stem}-F_Mask.gbr ${odir}/${stem}.gts
cp ${stem}-F_Cu.gbr ${odir}/${stem}.gtl

cp ${stem}-B_Cu.gbr ${odir}/${stem}.gbl
cp ${stem}-B_Mask.gbr ${odir}/${stem}.gbs
cp ${stem}-B_Silkscreen.gbr ${odir}/${stem}.gbo

cp ${stem}-PTH.drl  ${odir}/
cp ${stem}-Edge_Cuts.gbr ${odir}/

zip ${stem}-fixparts-${gTODAY}  ${odir}/*
