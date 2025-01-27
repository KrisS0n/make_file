TAGER = MyProject
CPP = g++

PREF_SRC = ./src/
PREF_OBJ = ./obj/

SRC = $(wildcard $(PREF_SRC)*.cpp)
OBJ = $(patsubst $(PREF_SRC)%.cpp, $(PREF_OBJ)%.o, $(SRC))

$(TAGER): $(OBJ)
	$(CPP) $(OBJ) -o $(TAGER)

$(PREF_OBJ)%.o : $(PREF_SRC)%.cpp
	$(CPP) -c $< -o $@

clean:
	rm $(TAGER) $(PREF_OBJ)*.o
