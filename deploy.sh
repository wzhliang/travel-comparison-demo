#!/bin/bash

oc new-project travel-agency
oc project travel-agency
oc adm policy add-scc-to-user privileged -z default

oc apply -f <(istioctl kube-inject -f travels.yaml) -n travel-agency
oc apply -f travels-gateway.yaml -n travel-agency