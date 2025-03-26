#!/bin/bash


echo "===================================="
echo "Bem-vindo ao script de execução do Python!"
echo "Este script executa o arquivo Python 'calculadorapy.py'."
echo "===================================="
echo ""

echo "Verificando se o Python 3 está instalado..."
if ! command -v python3 &> /dev/null
then
    echo "Erro: O Python 3 não está instalado. Por favor, instale o Python 3 e tente novamente."
    exit 1
fi

PYTHON_SCRIPT="/mnt/c/users/usuario/documents/calculadorapy.py"

if [ ! -f "$PYTHON_SCRIPT" ]; then
    echo "Erro: O arquivo 'calculadorapy.py' não foi encontrado no caminho especificado."
    echo "Por favor, verifique o caminho do arquivo e tente novamente."
    exit 1
fi

echo "Arquivo encontrado: $PYTHON_SCRIPT"
echo "Executando o script Python..."

python3 "$PYTHON_SCRIPT"

if [ $? -eq 0 ]; then
    echo "O script Python foi executado com sucesso!"
else
    echo "Erro: Ocorreu um problema ao executar o script Python."
    exit 1
fi

echo "===================================="
echo "Obrigado por usar o script. Até logo!"
echo "===================================="
