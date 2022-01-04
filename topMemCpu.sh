#!/bin/bash
#
#TOP 10 PROCESSOS QUE CONSOMEM MEMORIA E CPU
echo ""
echo -e "\e[4;30;42m TOP 10 PROCESSOS |  CPU \e[0m"
ps -eo %cpu,comm --sort=-%cpu | head -n 10
echo ""
echo ""
echo -e "\e[4;30;42m TOP 10 PROCESSOS | MEMORIA \e[0m"
ps -eo %mem,comm --sort=-%mem | head -n 10
echo ""
