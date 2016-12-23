#!/bin/bash
jupyter notebook list
jupyter notebook --ip=0.0.0.0 > /notebooks/session.log
