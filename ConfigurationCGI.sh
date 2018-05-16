#!/bin/bash

cat $_TESTE > /usr/lib/cgi-bin/teste.sh
chmod a+x /usr/lib/cgi-bin/teste.sh
echo "configuração realizada."
echo "acesse: http://0.0.0.0/sh/teste.sh"
exit 0