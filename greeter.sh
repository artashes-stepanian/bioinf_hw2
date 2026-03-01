#!/bin/bash

# Скрипт для приветствия с проверкой аргументов
# Использование: ./greeter.sh Имя Фамилия Группа

# Проверяем количество переданных аргументов
if [ $# -lt 3 ]; then
    # Если аргументов меньше 3
    echo "Error: Not enough arguments provided"
    echo "Usage: ./greeter.sh <First Name> <Last Name> <Group>"
    echo "Example: ./greeter.sh Ivan Ivanov Bio305"
    exit 1
fi

# Сохраняем аргументы в переменные для лучшей читаемости
FIRST_NAME=$1
LAST_NAME=$2
GROUP=$3

# Выводим приветствие
echo "Welcome, $FIRST_NAME $LAST_NAME from group $GROUP!"

# Дополнительная информация (опционально)
echo ""
echo "Summary:"
echo "- First Name: $FIRST_NAME"
echo "- Last Name: $LAST_NAME"
echo "- Group: $GROUP"
echo "- Date: $(date)"
