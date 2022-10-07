#!/bin/bash
length=$1
printf -- '-%.0s' $(eval echo {1..$length})
