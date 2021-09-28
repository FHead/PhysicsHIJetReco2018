#!/bin/sh

Input=$1
Output=$2

WorkDir=`pwd`

cd /afs/cern.ch/work/c/chenyi/CMSSW/HI/CMSSW_10_3_3_patch1/src/
eval `scramv1 runtime -sh`
cd /afs/cern.ch/work/c/chenyi/PhysicsWorkspace/HIJetReco2018/Validation/23745_MiniAODForesting/

export X509_USER_PROXY=/afs/cern.ch/user/c/chenyi/work/PhysicsWorkspace/HIJetReco2018/CommonCode/proxy/x509up_proxy

mkdir -p /tmp/chenyi/
cat runForestAOD_pponAA_MIX_103X_template.py | sed "s#__INPUT__#$Input#" > $WorkDir/run.py
cmsRun $WorkDir/run.py
mv /tmp/chenyi/HiForestAOD.root /eos/cms/store/group/phys_heavyions/chenyi/Share/23745_MiniAODandAOD/$Output

rm $WorkDir/run.py


