# Лабораторная работа №5

## ФИО: Ибрагимов Гаджимурад Шамильевич

### Группа: НКАбд-02-25

# Цель работы

Настройка рабочей среды.

# Задание

#### Менеджер паролей pass

#### Управление файлами конфигурации

# Теоретическое введение

Под названием «pass» обычно подразумевают

**стандартный менеджер паролей Unix** (The Standard Unix Password Manager). Это минималистичный инструмент для командной строки, который следует философии Unix. 

Основные характеристики `pass`

- **Принцип работы**: Каждый пароль хранится внутри обычного зашифрованного текстового файла. Названия файлов соответствуют ресурсам (например, `google.com.gpg`).

- **Шифрование**: Используется **GnuPG** (GPG) для надежного шифрования данных.

- **Синхронизация**: База паролей легко синхронизируется между устройствами через **Git**.



---





- **Интерфейс**: Основное взаимодействие идет через терминал, но существуют графические оболочки (GUI) и расширения для браузеров.

- **Кроссплатформенность**: Хотя он ориентирован на Linux, есть клиенты для Android, iOS, Windows и macOS.

**Chezmoi** - это мощный
 инструмент с открытым исходным кодом, предназначенный для безопасного 
управления конфигурационными файлами (dotfiles) пользователя на 
нескольких компьютерах. Он позволяет синхронизировать настройки 
между разными ОС (macOS, Linux), используя Git, шаблоны Go и 
шаблонизацию для адаптации конфигов под конкретную машину.

# Выполнение лабораторной работы

### Менеджер паролей pass

Установка pass и gopass

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-14-16-54-14-image.png)

---

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-14-16-55-42-image.png)

---

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-14-16-56-08-image.png)

---

##### Настройка

Проверка gpg ключа 

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-14-16-57-11-image.png)

инициализация хранилища

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-14-17-15-29-image.png)

---

### Настройка интерфейса с браузером

Плагин для браузера

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-14-17-22-28-image.png)

Установка браупасс

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-14-17-29-49-image.png)

---

### Сохранение пароля и Изменение пароля

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-14-17-32-06-image.png)

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-14-17-36-00-image.png)

---

## Управление файлами конфигурации

Дополнительное программное обеспечение

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-14-17-41-17-image.png)

---

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-14-17-41-36-image.png)

---

### Установка

Установка бинарного файла. Скрипт определяет архитектуру процессора и операционную систему и скачивает необходимый файл:

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-14-17-50-30-image.png)

### Создание собственного репозитория с помощью утилит

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-14-17-51-33-image.png)

### Подключение репозитория к своей системе

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-14-17-53-07-image.png)

---

Проверка  какие изменения внесёт `chezmoi` в домашний каталог, запустив: chezmoi diff. Если вас устраивают изменения, внесённые `chezmoi`, запустите: chezmoi apply -v

Процесс внедрения изменений



![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-14-17-56-06-image.png)

# Выводы

В результате данной лабораторной работы я познакомился с менеджером паролей pass и конфигуратором файлов chezmoi
