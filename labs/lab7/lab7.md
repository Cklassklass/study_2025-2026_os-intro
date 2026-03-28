# Лабораторная работа №7

## Анализ файловой системы Linux.

## ФИО: Ибрагимов Гаджимурад Шамильевич

### Группа: НКАбд-02-25

# Цель работы

Ознакомление с файловой системой Linux, её структурой, именами и содержанием
каталогов. Приобретение практических навыков по применению команд для работы
с файлами и каталогами, по управлению процессами (и работами), по проверке использования диска и обслуживанию файловой системы.

# Задание

## 1 часть

Выполните все примеры, приведённые в первой части описания лабораторной работы.

---

## 2 часть

Выполните следующие действия, зафиксировав в отчёте по лабораторной работе
используемые при этом команды и результаты их выполнения:
2.1. Скопируйте файл /usr/include/sys/io.h в домашний каталог и назовите его
equipment. Если файла io.h нет, то используйте любой другой файл в каталоге
/usr/include/sys/ вместо него.
2.2. В домашнем каталоге создайте директорию ~/ski.plases.
2.3. Переместите файл equipment в каталог ~/ski.plases.
2.4. Переименуйте файл ~/ski.plases/equipment в ~/ski.plases/equiplist.
2.5. Создайте в домашнем каталоге файл abc1 и скопируйте его в каталог
~/ski.plases, назовите его equiplist2.
2.6. Создайте каталог с именем equipment в каталоге ~/ski.plases.
2.7. Переместите файлы ~/ski.plases/equiplist и equiplist2 в каталог
~/ski.plases/equipment.
2.8. Создайте и переместите каталог ~/newdir в каталог ~/ski.plases и назовите
его plans

---

## 3 часть

Определите опции команды chmod, необходимые для того, чтобы присвоить перечисленным ниже файлам выделенные права доступа, считая, что в начале таких прав
нет:
3.1. drwxr--r-- ... australia
3.2. drwx--x--x ... play
3.3. -r-xr--r-- ... my_os
3.4. -rw-rw-r-- ... feathers
При необходимости создайте нужные файлы.

---

## 4 часть

Проделайте приведённые ниже упражнения, записывая в отчёт по лабораторной
работе используемые при этом команды:
4.1. Просмотрите содержимое файла /etc/password.
4.2. Скопируйте файл ~/feathers в файл ~/file.old.
4.3. Переместите файл ~/file.old в каталог ~/play.
4.4. Скопируйте каталог ~/play в каталог ~/fun.
4.5. Переместите каталог ~/fun в каталог ~/play и назовите его games.
4.6. Лишите владельца файла ~/feathers права на чтение.
4.7. Что произойдёт, если вы попытаетесь просмотреть файл ~/feathers командой
cat?
4.8. Что произойдёт, если вы попытаетесь скопировать файл ~/feathers?
4.9. Дайте владельцу файла ~/feathers право на чтение.
4.10. Лишите владельца каталога ~/play права на выполнение.
4.11. Перейдите в каталог ~/play. Что произошло?
4.12. Дайте владельцу каталога ~/play право на выполнение.

---

## 5 часть

Прочитайте man по командам mount, fsck, mkfs, kill и кратко их охарактеризуйте, приведя примеры.

# Теоретическое введение

Основные команды Linux для работы с файлами и каталогами включают навигацию , создание , управление, поиск. Они позволяют эффективно создавать, копировать, перемещать, переименовывать и удалять объекты в файловой системе через терминал.

Права доступа в Linux определяют, кто может читать ![](data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==)писать или выполнять ![](data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==)файлы и каталоги. Доступ делится на три группы: Владелец (User), Группа
 (Group) и Остальные (Others). Права управляются через символьный ![](data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==)или числовой ![](data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==)форматы командами `chmod` (права), `chown` (владелец), `chgrp` (группа).

# Выполнение лабораторной работы

## 1 часть

### Команды для работы с файлами и каталогами

Для создания текстового файла можно использовать команду touch.

Формат команды:

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-28-14-30-31-image.png)

---

Для просмотра файлов небольшого размера можно использовать команду cat.
Формат команды:

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-28-14-32-41-image.png)

---

Для просмотра файлов постранично удобнее использовать команду less.
Формат команды:

less <название файла>

![Computer](/home/gkibragimov/Pictures/Снимки%20экрана/Снимок%20экрана%20от%202026-03-28%2014-33-55.png)

---

Команда head выводит первые n строк . а команда tail последние n строк файла

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-28-17-18-14-image.png)

---

### Копирование файлов и каталогов

Команда cp используется для копирования файлов и каталогов.
Формат команды: 

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-28-14-45-24-image.png)

Копирование файла в текущем каталоге. Скопировать файл ~/abc1 в файл april
и в файл may:

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-28-14-49-14-image.png)

---

Копирование нескольких файлов в каталог. Скопировать файлы april и may в каталог
monthly:

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-28-14-52-29-image.png)

Копирование файлов в произвольном каталоге. Скопировать файл monthly/may в файл с именем june:

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-28-14-55-03-image.png)

---

Копирование каталогов в текущем каталоге. Скопировать каталог monthly в каталог
monthly.00

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-28-15-02-58-image.png)

Копирование каталогов в произвольном каталоге. Скопировать каталог monthly.00
в каталог /tmp

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-28-15-04-13-image.png)

---

### Перемещение и переименование файлов и каталогов

Команды mv и mvdir предназначены для перемещения и переименования файлов
и каталогов. Формат команды mv:

mv [-опции] старый_файл новый_файл

Переименование файлов в текущем каталоге. Изменить название файла april на
july в домашнем каталоге:

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-28-15-00-18-image.png)

---

Перемещение файлов в другой каталог. Переместить файл july в каталог monthly.00:

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-28-15-07-22-image.png)

Переименование каталогов в текущем каталоге. Переименовать каталог monthly.00
в monthly.01:

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-28-15-08-30-image.png)

---

Перемещение каталога в другой каталог. Переместить каталог monthly.01 в каталог
reports:

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-28-15-09-44-image.png)

Переименование каталога, не являющегося текущим. Переименовать каталог
reports/monthly.01 в reports/monthly:

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-28-15-11-27-image.png)

---

### Изменение прав доступа

Права доступа к файлу или каталогу можно изменить, воспользовавшись командой
chmod. Сделать это может владелец файла (или каталога) или пользователь с правами администратора.
Формат команды: 

chmod режим имя_файла

Требуется создать файл ~/may с правом выполнения для владельца

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-28-15-24-45-image.png)

---

Требуется лишить владельца файла ~/may права на выполнение:

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-28-15-26-09-image.png)

---

Требуется создать каталог monthly с запретом на чтение для членов группы и всех
остальных пользователей:

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-28-15-31-50-image.png)

Требуется создать файл ~/abc1 с правом записи для членов группы:

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-28-15-33-17-image.png)

---

### Анализ файловой системы

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-28-15-36-14-image.png)

---

## 2 часть

Скопируйте файл /usr/include/sys/io.h в домашний каталог и назовите его
equipment. Если файла io.h нет, то используйте любой другой файл в каталоге
/usr/include/sys/ вместо него.

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-28-15-42-13-image.png)

---

В домашнем каталоге создайте директорию ~/ski.places

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-28-15-47-57-image.png)

Переместите файл equipment в каталог ~/ski.places.

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-28-15-44-24-image.png)

---

Переименуйте файл ~/ski.places/equipment в ~/ski.places/equiplist.

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-28-15-47-05-image.png)

---

Создайте в домашнем каталоге файл abc1 и скопируйте его в каталог
~/ski.places, назовите его equiplist2

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-28-15-50-05-image.png)

Создайте каталог с именем equipment в каталоге ~/ski.places.

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-28-15-51-31-image.png)

---

Переместите файлы ~/ski.plases/equiplist и equiplist2 в каталог
~/ski.plases/equipment.

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-28-15-53-22-image.png)

Создайте и переместите каталог ~/newdir в каталог ~/ski.plases и назовите
его plans.

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-28-15-55-06-image.png)

---

## 3 часть

Определите опции команды chmod, необходимые для того, чтобы присвоить перечис-
ленным ниже файлам выделенные права доступа, считая, что в начале таких прав
нет:
3.1. drwxr--r-- ... australia
3.2. drwx--x--x ... play
3.3. -r-xr--r-- ... my_os
3.4. -rw-rw-r-- ... feathers
При необходимости создайте нужные файлы.

Создаем нужные файлы в специальном каталоге:

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-28-16-24-54-image.png)

Изначальные права доступа 

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-28-16-26-02-image.png)

---

Изменяем права доступа

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-28-16-31-11-image.png)

---

## 4 часть

Просмотрите содержимое файла /etc/password.

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-28-16-40-53-image.png)

Скопируйте файл ~/feathers в файл ~/file.old.

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-28-16-42-58-image.png)

---

Переместите файл ~/file.old в каталог ~/play.

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-28-16-49-03-image.png)

Скопируйте каталог ~/play в каталог ~/fun.

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-28-16-50-21-image.png)

---

Переместите каталог ~/fun в каталог ~/play и назовите его games

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-28-16-51-54-image.png)

Лишите владельца файла ~/feathers права на чтение.

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-28-16-53-31-image.png)

---

Что произойдёт, если вы попытаетесь просмотреть файл ~/feathers командой
cat?

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-28-16-54-03-image.png)

Что произойдёт, если вы попытаетесь скопировать файл ~/feathers?

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-28-16-55-19-image.png)

---

Дайте владельцу файла ~/feathers право на чтение

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-28-16-56-28-image.png)

---

Лишите владельца каталога ~/Play права на выполнение.

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-28-16-57-29-image.png)

Перейдите в каталог ~/play. Что произошло?

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-28-16-58-08-image.png)

---

Дайте владельцу каталога ~/Play право на выполнение.

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-28-16-59-29-image.png)

---

## 5 часть

Прочитайте man по командам mount, fsck, mkfs, kill и кратко их охарактеризуйте,
приведя примеры

man mount 

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-28-17-01-35-image.png)

---

man fsck

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-28-17-02-30-image.png)

man mkfs

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-28-17-03-09-image.png)

---

man kill

![](/home/gkibragimov/snap/marktext/9/.config/marktext/images/2026-03-28-17-03-44-image.png)

# Выводы

В ходе выполнения лабораторной работы были закреплены практические навыки работы с файловой системой и правами доступа
