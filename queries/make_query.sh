#!/bin/bash
../qgen | sed -e 's/\r//' > tpch_queries.sql
