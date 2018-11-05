CPP    = g++
RM     = rm -f
OBJS   = menu.o \
         main.o \
         Usuario.o \
         Produtos.o \
         Funcionarios.o \
         Estoque.o

LIBS   =
CFLAGS =

.PHONY: bin/Release/Loja_3.exe clean clean-after

all: bin/Release/Loja_3.exe

clean:
	$(RM) $(OBJS) bin/Release/Loja_3.exe

clean-after:
	$(RM) $(OBJS)

bin/Release/Loja_3.exe: $(OBJS)
	$(CPP) -O2 -s -Wall -o $@ $(OBJS) $(LIBS)

menu.o: menu.cpp Menu.h
	$(CPP) -O2 -s -Wall -c $< -o $@ $(CFLAGS)

main.o: main.cpp Menu.h Menu.cpp
	$(CPP) -O2 -s -Wall -c $< -o $@ $(CFLAGS)

Usuario.o: Usuario.cpp Usuario.h
	$(CPP) -O2 -s -Wall -c $< -o $@ $(CFLAGS)

Produtos.o: Produtos.cpp Produtos.h
	$(CPP) -O2 -s -Wall -c $< -o $@ $(CFLAGS)

Funcionarios.o: Funcionarios.cpp Usuario.h Funcionarios.h
	$(CPP) -O2 -s -Wall -c $< -o $@ $(CFLAGS)

Estoque.o: Estoque.cpp Estoque.h
	$(CPP) -O2 -s -Wall -c $< -o $@ $(CFLAGS)

