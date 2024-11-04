#!/bin/bash

docker run -d \
  --name=openvpn-as \
  --network host \
  --cap-add=NET_ADMIN \
  -p 943:943 -p 1194:1194/udp \
  -v .:/openvpn \
  openvpn/openvpn-as