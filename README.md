# make_file

TAGER = MyProject // Название проекта
CPP = g++ //язык

PREF_SRC = ./src/ //Папка в которых (.срр) файлы
PREF_OBJ = ./obj/ //Папка где будут созданы (.о) файлы

SRC = $(wildcard $(PREF_SRC)*.cpp) //Имена файлов с исходным кодом
OBJ = $(patsubst $(PREF_SRC)%.cpp, $(PREF_OBJ)%.o, $(SRC)) //Имена объектных файлов

$(TAGER): $(OBJ) //Создание проектра
	$(CPP) $(OBJ) -o $(TAGER)

$(PREF_OBJ)%.o : $(PREF_SRC)%.cpp //Создание из .срр файлов файлы .о
	$(CPP) -c $< -o $@

clean: //Очистка
	rm $(TAGER) $(PREF_OBJ)*.o



 //////////////////////////ГРУБО ГОВОРЯ ЭТО МОГЛО ВЫГЛЯДЕТЬ ВОТ ТАК(БЕЗ ПАПОК)///////////////////////////////

MyProject: main.o factorial.o hello.o
	g++ main.o sum.o -o MyProject

main.o: main.cpp
	g++ -c main.cpp

sum.o: sum.cpp
	g++ -c sum.cpp
 
clean:
	rm -rf *.o MyProject

  //////////// //////////// //////////// //////////// //////////// //////////// //////////// ////////////

  ЗАХОДИМ В ТЕРМИНАЛ
  
   cd назв_ваш_папка/  (В ПАПКУ ГДЕ У ВАС "makefale")
   
   make 
   
   ./MyProject (МОЙ ВАРИАН) (НУЖНО ВВОДИТЬ СВОЕ НАЗВАНИЕ)

   ЕСЛИ ЕСТЬ ЖЕНАНИЕ УДАЛИТЬ ВСЕ 

   cd назв_ваш_папка/  (В ПАПКУ ГДЕ У ВАС "makefale")

   make clean
