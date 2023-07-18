#!/bin/bash
docker build -t tese .
docker run -d -p 5432:5432 tese
