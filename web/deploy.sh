#!/bin/bash

cd public
tar -zcvf deploy.tar.gz *
cat deploy.tar.gz | ssh admin@podlomar.org 'rm -R /www/kodim.cz/*; tar zxvf - -C /www/kodim.cz && docker restart kodim.cz'
