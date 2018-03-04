#!/bin/sh
pfexec pkgin -y update &&
    pfexec pkgin -y install gcc49
