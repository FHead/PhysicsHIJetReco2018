#!/bin/sh

cd /afs/cern.ch/work/c/chenyi/CMSSW/CMSSW_11_2_1_patch2/src/
eval `scramv1 runtime -sh`
cd /afs/cern.ch/work/c/chenyi/PhysicsWorkspace/HIJetReco2018/Validation/23745_MiniAODForesting/

export X509_USER_PROXY=/afs/cern.ch/user/c/chenyi/work/PhysicsWorkspace/HIJetReco2018/CommonCode/proxy/x509up_proxy

mkdir -p /tmp/chenyi/
cmsRun forest_miniAOD_112X_MC.py
mv /tmp/chenyi/HiForestMiniAOD.root /eos/cms/store/group/phys_heavyions/chenyi/Share/23745_MiniAODandAOD/




