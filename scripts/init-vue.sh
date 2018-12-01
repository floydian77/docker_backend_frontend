#!/usr/bin/env bash

if [ -z "$(ls -A $PWD)" ]; then
    yes | vue create --default .
    yarn run build
fi