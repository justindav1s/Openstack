#/bin/bash
oc login https://ocp.datr.eu:8443 justin

oc create -f nvidia-deviceplugin-scc.yaml


oc get scc | grep nvidia

sleep 10

oc label node 192.168.0.20 openshift.com/gpu-accelerator=true

oc create -f nvidia-device-plugin.yml

sleep 10

oc get pods
